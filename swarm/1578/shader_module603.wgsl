struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<bool>, 7> = array<vec2<bool>, 7>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true));

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: array<vec3<bool>, 20>;

var<private> global4: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(-3221i, 22644i, 6400i, -24646i), vec4<i32>(-90366i, -1i, -15958i, -27383i), vec4<i32>(7038i, 8260i, -23370i, 2147483647i), vec4<i32>(1405i, -38334i, 25274i, 36554i), vec4<i32>(-1i, -8726i, 1i, -1i), vec4<i32>(i32(-2147483648), -1i, -371i, 27898i), vec4<i32>(7086i, 1i, i32(-2147483648), 13050i), vec4<i32>(-42014i, 0i, 1i, 19351i), vec4<i32>(-1i, -1i, i32(-2147483648), 2144i), vec4<i32>(2147483647i, 0i, -1i, 1i), vec4<i32>(2147483647i, 2147483647i, -1i, -66757i), vec4<i32>(i32(-2147483648), i32(-2147483648), -25207i, -458i), vec4<i32>(0i, 2147483647i, 0i, 0i), vec4<i32>(39671i, 0i, 1i, -26708i), vec4<i32>(-20967i, i32(-2147483648), i32(-2147483648), 0i), vec4<i32>(i32(-2147483648), 1i, -52285i, 9965i), vec4<i32>(46946i, -9050i, 1i, i32(-2147483648)), vec4<i32>(i32(-2147483648), i32(-2147483648), 102954i, 23733i), vec4<i32>(-1i, -20416i, i32(-2147483648), -29036i), vec4<i32>(2871i, -1i, 32369i, 0i), vec4<i32>(-52163i, 2147483647i, 22186i, 34388i));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: u32) -> vec2<bool> {
    let var_0 = !any(!select(select(vec3<bool>(global2.x, true, arg_0.x), global3[_wgslsmith_index_u32(arg_1, 20u)], global2.x), !vec3<bool>(global2.x, global2.x, false), select(global3[_wgslsmith_index_u32(100261u, 20u)], vec3<bool>(global2.x, false, global2.x), global2.x)));
    let var_1 = arg_0.wz;
    let var_2 = Struct_2(0i, select(26571i, i32(-1i) * -4083i, any(select(arg_0, arg_0, vec4<bool>(true, arg_0.x, false, global2.x)))) >> (arg_1 % 32u), Struct_1(~(~vec3<u32>(4825u, 0u, 13254u)), u_input.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -322f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1165f))));
    let var_3 = var_2.c.a.x;
    let var_4 = Struct_2(u_input.d.x, -1i, Struct_1(_wgslsmith_div_vec3_u32(firstLeadingBit(var_2.c.a), ~abs(vec3<u32>(var_2.c.a.x, arg_1, 0u))), u_input.c), var_2.d, var_2.e);
    return vec2<bool>(select(any(vec2<bool>(false, false)), true, false), all(!(!var_1)));
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    global2 = select(!(!global1[_wgslsmith_index_u32(1u, 7u)]), global1[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(26053u, u_input.a, 47118u)) & u_input.a, 7u)], global2.x);
    var var_0 = select(func_3(select(!vec4<bool>(global2.x, false, true, global2.x), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, true, global2.x, false), true), true), u_input.a), global1[_wgslsmith_index_u32(abs(u_input.a), 7u)], all(global3[_wgslsmith_index_u32(abs(29534u), 20u)]));
    global1 = array<vec2<bool>, 7>();
    global2 = select(vec2<bool>(!var_0.x, !(u_input.a < _wgslsmith_sub_u32(u_input.a, u_input.a))), select(vec2<bool>(false && (global2.x || var_0.x), true), vec2<bool>(false, var_0.x), !vec2<bool>(var_0.x, select(false, false, var_0.x))), !(!(!vec2<bool>(global2.x, true))));
    var var_1 = Struct_2(countOneBits(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.c, ~arg_0.x), i32(-1i) * -1i)), _wgslsmith_sub_i32(i32(-1i) * -arg_0.x, -12970i), Struct_1(vec3<u32>(select(~1u, 31328u & u_input.a, true), u_input.a, u_input.a), u_input.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(392f + -1752f) - 1157f)))), _wgslsmith_f_op_f32(select(-431f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -727f) - 1214f), _wgslsmith_div_f32(-114f, _wgslsmith_f_op_f32(sign(903f))))), !global2.x)));
    return Struct_2(1i, countOneBits(~_wgslsmith_div_i32(var_1.a, arg_0.x)), Struct_1(_wgslsmith_add_vec3_u32(firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(1146u, u_input.a, 315u), var_1.c.a)), vec3<u32>(~1u, 1u | u_input.a, ~24201u)), var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1696f), _wgslsmith_f_op_f32(round(var_1.d)))))), 1000f);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_3 {
    var var_0 = vec2<bool>(!arg_3.x, global2.x);
    var var_1 = arg_1.wzy;
    var var_2 = global4[_wgslsmith_index_u32(arg_2.c.a.x, 21u)];
    var var_3 = firstTrailingBit(countOneBits(_wgslsmith_mod_u32(reverseBits(arg_2.c.a.x), func_2(min(u_input.b, var_2.ww)).c.a.x)));
    let var_4 = func_2(vec2<i32>(u_input.c, u_input.d.x));
    return Struct_3(func_2(vec2<i32>(var_2.x & -71900i, var_2.x)).c, vec4<bool>(true, global2.x, arg_3.x, !any(vec3<bool>(true, true, true))), Struct_2(-firstTrailingBit(var_2.x), _wgslsmith_div_i32(_wgslsmith_clamp_i32(reverseBits(var_2.x), 31817i >> (0u % 32u), ~2147483647i), var_4.a), func_2(abs(var_2.xy)).c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 490f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d) + _wgslsmith_f_op_f32(-var_1.x)) * -1465f)), var_4.e);
}

fn func_5(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_3) -> Struct_2 {
    let var_0 = global4[_wgslsmith_index_u32(1u & _wgslsmith_div_u32(125558u, _wgslsmith_dot_vec3_u32(arg_2.c.c.a, arg_2.c.c.a)), 21u)];
    let var_1 = -166f;
    let var_2 = !func_4(~max(vec4<u32>(arg_2.a.a.x, arg_2.c.c.a.x, arg_2.a.a.x, 9834u), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(982f, 242f, arg_2.c.d, 748f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-690f, -429f, 497f, arg_0.x) * vec4<f32>(arg_0.x, arg_2.c.e, -380f, var_1))), func_2(~var_0.wy), vec4<bool>(any(!arg_2.b), true, !(arg_2.b.x | true), all(global3[_wgslsmith_index_u32(~arg_2.c.c.a.x, 20u)]))).b;
    global1 = array<vec2<bool>, 7>();
    let var_3 = arg_2.a;
    return Struct_2(firstTrailingBit(_wgslsmith_dot_vec2_i32((vec2<i32>(arg_2.a.b, 0i) << (arg_2.a.a.zy % vec2<u32>(32u))) ^ vec2<i32>(var_0.x, 2147483647i), ~_wgslsmith_mod_vec2_i32(vec2<i32>(var_3.b, -2147483647i), vec2<i32>(arg_2.a.b, arg_2.c.a)))), ~firstTrailingBit(var_3.b), func_4(vec4<u32>(var_3.a.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(40453u, 83287u), var_3.a.zx) % 32u), 4294967295u, ~4294967295u << (~var_3.a.x % 32u), arg_2.c.c.a.x), arg_0, func_4(~vec4<u32>(var_3.a.x, u_input.a, 4294967295u, 0u), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(890f, 1236f, var_1, -799f))), arg_2.c, arg_2.b).c, var_2).c.c, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(f32(-1f) * -446f));
}

fn func_1() -> f32 {
    var var_0 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1228f, _wgslsmith_f_op_f32(f32(-1f) * -1004f), 1000f, _wgslsmith_f_op_f32(411f + -243f)))), global2.x, func_4(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(u_input.a, u_input.a, 55903u, u_input.a)), vec4<u32>(u_input.a, _wgslsmith_add_u32(u_input.a, 0u), 90549u, _wgslsmith_div_u32(u_input.a, 19619u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1058f, -372f, -665f, -393f), vec4<f32>(816f, 1679f, 1000f, 777f), vec4<bool>(true, global2.x, false, global2.x))), vec4<f32>(-2673f, -1000f, -121f, -1125f))), func_2(~vec2<i32>(u_input.c, u_input.b.x)), !vec4<bool>(all(global1[_wgslsmith_index_u32(u_input.a, 7u)]), global2.x, all(global3[_wgslsmith_index_u32(4294967295u, 20u)]), global2.x)));
    var var_1 = u_input.d;
    global2 = !vec2<bool>(all(!(!vec4<bool>(global2.x, true, false, global2.x))), true);
    var var_2 = true;
    var_2 = !(func_4(vec4<u32>(~62903u, var_0.c.a.x, _wgslsmith_add_u32(4294967295u, var_0.c.a.x), func_2(vec2<i32>(-14423i, var_0.a)).c.a.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1038f, 881f, -1589f, var_0.e))))), func_2(countOneBits(vec2<i32>(u_input.c, var_0.a))), !func_4(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), vec4<f32>(var_0.d, -2121f, 109f, 214f), Struct_2(-6i, 1i, var_0.c, var_0.d, var_0.e), vec4<bool>(false, false, true, global2.x)).b).b.x || false);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1307f * var_0.e) + _wgslsmith_f_op_f32(var_0.d + var_0.d)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.e, var_0.d)) - _wgslsmith_f_op_f32(abs(-575f)))))));
}

fn func_6(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = vec2<bool>(all(!vec4<bool>(!global2.x, global2.x, !global2.x, all(vec3<bool>(global2.x, global2.x, global2.x)))), all(!func_4(vec4<u32>(0u, 1u, 0u, u_input.a), vec4<f32>(-286f, -539f, -1000f, arg_0.x), func_2(u_input.b), vec4<bool>(false, true, false, false)).b));
    global0 = func_4(abs(vec4<u32>(func_5(vec4<f32>(arg_0.x, -882f, -741f, -2057f), false, Struct_3(Struct_1(vec3<u32>(u_input.a, 1u, 1u), u_input.d.x), vec4<bool>(false, false, global2.x, true), Struct_2(u_input.c, u_input.b.x, Struct_1(vec3<u32>(0u, u_input.a, 34525u), u_input.d.x), 1176f, arg_0.x), 460f)).c.a.x << (max(u_input.a, u_input.a) % 32u), ~2419u & (u_input.a ^ u_input.a), ~(~0u), u_input.a)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.x, -714f, 702f, -153f))))))), func_2(-u_input.b), select(!(!(!vec4<bool>(var_0.x, var_0.x, false, true))), vec4<bool>(var_0.x, select(global2.x & false, true, global2.x), true, !(!var_0.x)), any(global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.a, 59160u), 20u)]))).a.b;
    global2 = func_4(~_wgslsmith_div_vec4_u32(~vec4<u32>(31802u, 0u, u_input.a, 0u), ~vec4<u32>(4294967295u, 33780u, 2468u, u_input.a)) & vec4<u32>(0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 28032u, u_input.a), vec3<u32>(u_input.a, 0u, u_input.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(36348u, u_input.a, 0u, u_input.a), vec4<u32>(4294967295u, 4294967295u, u_input.a, 2889u) | vec4<u32>(60750u, 11574u, 0u, u_input.a)), ~1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(round(862f)), -1163f, _wgslsmith_div_f32(arg_0.x, arg_0.x), arg_0.x)))), Struct_2(u_input.b.x, ~reverseBits(countOneBits(0i)), Struct_1(_wgslsmith_mod_vec3_u32(select(vec3<u32>(u_input.a, u_input.a, 25456u), vec3<u32>(0u, u_input.a, u_input.a), global3[_wgslsmith_index_u32(76839u, 20u)]), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(4294967295u, 32789u, u_input.a))), -57238i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)), arg_0.x))), vec4<bool>(true, all(global3[_wgslsmith_index_u32(1u, 20u)]), true, false)).b.yz;
    var var_1 = func_4(vec4<u32>(1u, 4294967295u, firstLeadingBit(~4294967295u), ~9642u) & vec4<u32>(~abs(u_input.a), ~(~u_input.a), _wgslsmith_div_u32(u_input.a, 0u), _wgslsmith_add_u32(reverseBits(u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), func_2(firstTrailingBit(vec2<i32>(u_input.c, u_input.c))).e, _wgslsmith_f_op_f32(f32(-1f) * -1038f), arg_0.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(760f, -2507f, 242f, -1036f) * vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 806f)) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(885f, -743f, -394f, 1000f) + vec4<f32>(arg_0.x, arg_0.x, 903f, arg_0.x)))))), func_5(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_0.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.x * arg_0.x))), 572f, _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(arg_0.x * 739f))), -1330f == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, -153f)), Struct_3(func_4(~vec4<u32>(u_input.a, 4294967295u, u_input.a, 0u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 204f)), func_2(vec2<i32>(2147483647i, -899i)), !vec4<bool>(var_0.x, false, true, var_0.x)).a, vec4<bool>(global2.x, global2.x, !var_0.x, !var_0.x), Struct_2(1i, u_input.c, func_5(vec4<f32>(arg_0.x, arg_0.x, 511f, arg_0.x), global2.x, Struct_3(Struct_1(vec3<u32>(u_input.a, u_input.a, 20626u), u_input.c), vec4<bool>(true, true, false, global2.x), Struct_2(-33816i, 0i, Struct_1(vec3<u32>(u_input.a, u_input.a, u_input.a), u_input.c), arg_0.x, arg_0.x), arg_0.x)).c, arg_0.x, 2037f), -1156f)), select(!select(vec4<bool>(false, false, true, false), !vec4<bool>(false, var_0.x, false, false), vec4<bool>(var_0.x, false, var_0.x, global2.x)), vec4<bool>(all(vec2<bool>(global2.x, true)), true, true, true), any(!global3[_wgslsmith_index_u32(min(0u, u_input.a), 20u)]))).c;
    var var_2 = Struct_3(var_1.c, !vec4<bool>(var_0.x, ~1i > countOneBits(u_input.c), !func_3(vec4<bool>(false, global2.x, var_0.x, true), 0u).x, var_0.x), Struct_2(abs(2147483647i), _wgslsmith_mod_i32(countOneBits(0i & u_input.b.x), 2147483647i), Struct_1(vec3<u32>(4294967295u, _wgslsmith_add_u32(u_input.a, u_input.a), ~4294967295u), ~(-1i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) * var_1.e)), var_1.e), -1000f);
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = func_6(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1574f)), -1500f))))));
    var var_2 = 0i;
    global4 = array<vec4<i32>, 21>();
    global2 = !vec2<bool>(false, global2.x);
    let var_3 = _wgslsmith_div_vec2_u32(func_2(-u_input.d.yz).c.a.yy, var_1.c.a.zz);
    global0 = -func_2(u_input.b).a;
    let x = u_input.a;
    s_output = StorageBuffer(~(-select(min(global4[_wgslsmith_index_u32(var_3.x, 21u)], global4[_wgslsmith_index_u32(u_input.a, 21u)]), -global4[_wgslsmith_index_u32(37682u, 21u)], global2.x)));
}

