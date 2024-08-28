struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<i32>(-28191i, -63551i, 9473i, 2147483647i), true, vec2<bool>(false, true), 745f), Struct_1(vec4<i32>(1i, 2147483647i, -1820i, 0i), true, vec2<bool>(false, false), 602f), Struct_1(vec4<i32>(51409i, -14883i, 27492i, 1i), false, vec2<bool>(true, true), 630f), Struct_1(vec4<i32>(1i, -63365i, -5567i, -1i), true, vec2<bool>(true, false), -790f), Struct_1(vec4<i32>(14206i, 2147483647i, -23684i, 6084i), false, vec2<bool>(false, true), -1000f), Struct_1(vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 38828i), false, vec2<bool>(false, true), -2519f), Struct_1(vec4<i32>(50082i, 0i, -57757i, 1i), false, vec2<bool>(true, true), 308f), Struct_1(vec4<i32>(20855i, 2147483647i, -37366i, -13886i), false, vec2<bool>(true, false), -190f), Struct_1(vec4<i32>(0i, -31741i, -12409i, -36344i), false, vec2<bool>(false, false), 477f), Struct_1(vec4<i32>(41685i, -20559i, i32(-2147483648), 2788i), true, vec2<bool>(true, true), -192f), Struct_1(vec4<i32>(1i, i32(-2147483648), 1i, -1i), false, vec2<bool>(false, true), -126f), Struct_1(vec4<i32>(-34934i, 0i, 0i, -59640i), false, vec2<bool>(false, true), 220f), Struct_1(vec4<i32>(0i, -1i, 2147483647i, -23297i), true, vec2<bool>(false, false), 801f), Struct_1(vec4<i32>(10936i, -5411i, 1i, 1i), false, vec2<bool>(false, false), -504f), Struct_1(vec4<i32>(51681i, -49146i, i32(-2147483648), -1i), true, vec2<bool>(true, false), 383f), Struct_1(vec4<i32>(26610i, 0i, -14777i, 0i), true, vec2<bool>(false, true), -207f), Struct_1(vec4<i32>(0i, 8314i, -995i, -56001i), true, vec2<bool>(false, true), -1838f), Struct_1(vec4<i32>(i32(-2147483648), -1i, -39354i, 30444i), false, vec2<bool>(true, true), 1960f), Struct_1(vec4<i32>(-26058i, 22634i, i32(-2147483648), 8170i), true, vec2<bool>(false, false), -135f), Struct_1(vec4<i32>(-30065i, i32(-2147483648), 7965i, i32(-2147483648)), false, vec2<bool>(true, false), 374f), Struct_1(vec4<i32>(7427i, 13031i, 0i, 1i), false, vec2<bool>(false, false), -1677f), Struct_1(vec4<i32>(0i, -1i, -8208i, -3285i), false, vec2<bool>(false, true), 1000f), Struct_1(vec4<i32>(0i, 0i, 2147483647i, -2897i), true, vec2<bool>(false, true), -1274f), Struct_1(vec4<i32>(34825i, 0i, -14575i, 0i), false, vec2<bool>(false, true), 405f), Struct_1(vec4<i32>(1237i, -4134i, 1i, -800i), true, vec2<bool>(false, false), 906f), Struct_1(vec4<i32>(-23324i, 2147483647i, 2147483647i, -1i), false, vec2<bool>(true, false), 658f), Struct_1(vec4<i32>(-21113i, 2147483647i, -86521i, 2147483647i), false, vec2<bool>(false, false), -1527f));

var<private> global2: vec4<u32> = vec4<u32>(1u, 12414u, 52078u, 17794u);

var<private> global3: Struct_1;

var<private> global4: vec2<f32> = vec2<f32>(337f, -961f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    global2 = firstLeadingBit(abs(_wgslsmith_mult_vec4_u32(~select(vec4<u32>(0u, global2.x, 0u, global2.x), vec4<u32>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(false, true, false, false)), vec4<u32>(~global2.x, global2.x, _wgslsmith_dot_vec3_u32(global2.zxw, vec3<u32>(40131u, global2.x, global2.x)), _wgslsmith_add_u32(1u, global2.x)))));
    let var_0 = false;
    let var_1 = arg_1.b;
    var var_2 = global3.c.x | var_1;
    let var_3 = u_input.a.x;
    return true;
}

fn func_4(arg_0: Struct_2) -> u32 {
    global0 = array<Struct_1, 17>();
    let var_0 = arg_0;
    global3 = Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(~_wgslsmith_sub_i32(global3.a.x, -22431i), max(min(arg_0.a.a.x, global3.a.x), ~(-2147483647i)), ~(u_input.a.x >> (global2.x % 32u)), u_input.a.x), vec4<i32>(arg_0.a.a.x, -(~2147483647i), -12965i, _wgslsmith_sub_i32(var_0.a.a.x << (1u % 32u), firstTrailingBit(global3.a.x))), vec4<i32>(global3.a.x, 0i, -1i, max(_wgslsmith_div_i32(-2147483647i, -2147483647i), 11480i))), func_3(!(!var_0.a.c.x), Struct_1(~var_0.d, !any(vec3<bool>(false, false, false)), !vec2<bool>(var_0.c.b, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global4.x, -348f))))), vec2<bool>(true, !global3.c.x), -1085f);
    let var_1 = global0[_wgslsmith_index_u32(~(~(~87348u)), 17u)];
    let var_2 = _wgslsmith_f_op_f32(trunc(-940f));
    return ~47591u;
}

fn func_2() -> Struct_2 {
    let var_0 = ~func_4(Struct_2(Struct_1(global3.a, any(global3.c), vec2<bool>(global3.b, global3.b), global4.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.d, global4.x, -1191f)), Struct_1(~global3.a, func_3(global3.b, Struct_1(vec4<i32>(-1i, global3.a.x, 845i, global3.a.x), global3.c.x, global3.c, global3.d)), global3.c, _wgslsmith_f_op_f32(f32(-1f) * -966f)), global3.a));
    global4 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, -825f))));
    let var_1 = !vec3<bool>(true, countOneBits(1i) > max(global3.a.x, -u_input.a.x), true);
    let var_2 = Struct_2(global1[_wgslsmith_index_u32(1u, 27u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global4.x, global3.d, global3.d))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1071f, 1247f, 1074f))), vec3<f32>(997f, _wgslsmith_f_op_f32(-850f - global4.x), -1303f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -578f), 861f))), global1[_wgslsmith_index_u32(global2.x, 27u)], vec4<i32>(-u_input.a.x, _wgslsmith_mult_i32(15723i, min(-1i, global3.a.x)), min(global3.a.x, 30324i), 1i));
    var var_3 = var_2.a.a;
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: u32) -> f32 {
    var var_0 = !select(vec3<bool>(func_3(global3.c.x, Struct_1(vec4<i32>(-2147483647i, u_input.a.x, arg_0.a.x, arg_2.d.x), false, arg_0.c, -2147f)), true || !arg_2.a.c.x, _wgslsmith_f_op_f32(trunc(1525f)) >= arg_0.d), vec3<bool>(all(vec4<bool>(arg_0.b, arg_0.c.x, global3.c.x, global3.b)), func_2().c.b, any(vec2<bool>(true, arg_0.c.x))), true);
    global4 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(arg_2.b.yx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.b.zz) - _wgslsmith_div_vec2_f32(arg_2.b.xy, vec2<f32>(-775f, 352f))))))));
    let var_1 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d))) >= global3.d);
    var var_2 = global2.xx;
    var var_3 = 9138u;
    return 2008f;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: bool) -> vec2<bool> {
    global4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1023f) + vec2<f32>(global3.d, 1237f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(332f, global3.d))), vec2<f32>(_wgslsmith_f_op_f32(1000f + -1176f), _wgslsmith_div_f32(-690f, arg_0.d)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.d))), _wgslsmith_f_op_f32(func_5(Struct_1(arg_0.a, global3.c.x, arg_1.c, global3.d), _wgslsmith_mult_u32(global2.x, global2.x), func_2(), global2.x ^ 10711u))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(func_5(Struct_1(arg_0.a, true, vec2<bool>(false, arg_0.b), arg_0.d), 74863u, Struct_2(Struct_1(arg_1.a, arg_1.c.x, vec2<bool>(false, true), arg_0.d), vec3<f32>(-1246f, global4.x, arg_0.d), arg_1, vec4<i32>(arg_0.a.x, u_input.a.x, 56805i, 286i)), 11135u)), _wgslsmith_f_op_f32(f32(-1f) * -1127f))))), !select(select(select(global3.c, vec2<bool>(true, false), vec2<bool>(false, true)), arg_0.c, true), vec2<bool>(true, true), !select(vec2<bool>(arg_0.c.x, arg_3), vec2<bool>(false, global3.c.x), arg_0.c))));
    global0 = array<Struct_1, 17>();
    global2 = _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, global2.x, global2.x, global2.x), vec4<u32>(global2.x, 115418u, 1u, 4294967295u)), _wgslsmith_sub_u32(4294967295u, global2.x), 1u, 53173u ^ global2.x), ~vec4<u32>(11695u, 0u, global2.x, 4294967295u)), min(vec4<u32>(global2.x, ~global2.x, global2.x, _wgslsmith_add_u32(global2.x, 1u)), vec4<u32>(1u, global2.x, 4294967295u, 80373u) << (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, 4294967295u), vec4<u32>(37879u, 4294967295u, global2.x, 4294967295u)) % vec4<u32>(32u)))) >> (vec4<u32>(~firstLeadingBit(abs(global2.x)), 41740u, global2.x, ~_wgslsmith_dot_vec3_u32(global2.xxy, max(vec3<u32>(global2.x, global2.x, global2.x), global2.zwy))) % vec4<u32>(32u));
    var var_0 = ~(~min(4294967295u, 14295u));
    var var_1 = arg_0.c.x;
    return select(func_2().c.c, !arg_1.c, all(!arg_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(44263i);
    let var_1 = func_1(global1[_wgslsmith_index_u32(firstTrailingBit(global2.x), 27u)], Struct_1(global3.a, !all(!vec4<bool>(true, false, global3.b, global3.b)), !vec2<bool>(!global3.b, false), -995f), vec2<i32>(-_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-28821i, 33266i), vec2<i32>(0i, var_0)), _wgslsmith_sub_i32(global3.a.x, -15334i)), -1i), global3.b);
    let var_2 = vec3<u32>(~(global2.x >> ((0u & global2.x) % 32u)), global2.x << (global2.x % 32u), global2.x) << (global2.xzw % vec3<u32>(32u));
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global3.d, global3.d), vec2<f32>(global4.x, global3.d)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(global2.x, min(0u, ~1u) & reverseBits(global2.x), global2.x, select(~global2.x, 0u, false)), vec2<u32>(reverseBits(~global2.x), 4294967295u) | ~vec2<u32>(var_2.x, ~0u), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-411f, global3.d), vec2<f32>(-1708f, global3.d))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2394f, -693f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, -351f)))))), global2.x);
}

