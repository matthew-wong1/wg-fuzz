struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(i32(-2147483648), vec3<bool>(false, true, false), 541f, vec4<f32>(-1000f, 213f, 533f, 416f)));

var<private> global1: i32;

var<private> global2: array<i32, 14>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = ~global0.a.a;
    let var_1 = !(!(!vec4<bool>(true, global0.a.b.x, any(global0.a.b), !global0.a.b.x)));
    let var_2 = ~2147483647i;
    var var_3 = global0.a;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -541f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.d.x * 1359f)))), 438f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.c), -1213f)), -520f)));
    return _wgslsmith_div_f32(1429f, 1000f);
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = u_input.b.wzy;
    let var_1 = global0.a.d;
    global0 = Struct_2(global0.a);
    var var_2 = Struct_1(abs(u_input.a), global0.a.b, global0.a.d.x, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(func_3()), var_1.x, -940f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.x, 1202f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -357f), _wgslsmith_f_op_f32(func_3()), 1208f) + vec4<f32>(-748f, -1000f, var_1.x, _wgslsmith_f_op_f32(max(global0.a.d.x, -640f)))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1113f, var_1.x, var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1524f)));
    return Struct_1(~(-22716i), select(vec3<bool>(!var_2.b.x, true != (u_input.b.x <= var_0.x), any(!var_2.b)), !vec3<bool>(var_2.b.x, any(vec4<bool>(true, var_2.b.x, var_2.b.x, var_2.b.x)), true || global0.a.b.x), true), _wgslsmith_f_op_f32(func_3()), var_2.d);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = Struct_1(~1i, arg_3.a.b, arg_3.a.c, vec4<f32>(_wgslsmith_f_op_f32(select(-1383f, _wgslsmith_f_op_f32(floor(-944f)), arg_2.b.x)), arg_3.a.d.x, global0.a.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-1271f + global0.a.c)))));
    global1 = arg_0.x;
    global2 = array<i32, 14>();
    let var_1 = Struct_2(func_2(1i));
    global1 = -var_1.a.a;
    return select(!select(vec2<bool>(false, var_0.b.x), !(!var_0.b.xy), vec2<bool>(false, true)), select(select(vec2<bool>(!var_1.a.b.x, !arg_3.a.b.x), vec2<bool>(any(var_0.b.zy), var_0.b.x), global0.a.b.x), vec2<bool>(true, -1000f != _wgslsmith_f_op_f32(-var_0.d.x)), func_2(_wgslsmith_div_i32(-9376i, -global2[_wgslsmith_index_u32(u_input.b.x, 14u)])).b.yz), var_1.a.b.xx);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = global0.a;
    var var_2 = select(vec4<bool>((any(vec4<bool>(false, true, true, true)) && (global0.a.b.x || var_0.a.b.x)) && var_0.a.b.x, true, false, arg_0.a.b.x), vec4<bool>(any(vec3<bool>(any(vec3<bool>(false, true, false)), false, global0.a.b.x == true)), !all(!arg_2), false, true), true);
    global2 = array<i32, 14>();
    var var_3 = ~u_input.b;
    return Struct_1(29247i, var_2.zxx, arg_0.a.d.x, vec4<f32>(global0.a.d.x, var_1.c, -1050f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-132f))) - _wgslsmith_f_op_f32(532f + _wgslsmith_f_op_f32(floor(421f))))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    let var_0 = arg_1;
    let var_1 = -1i;
    global1 = -15406i;
    var var_2 = Struct_2(func_5(arg_0, select(reverseBits(~vec4<i32>(-1i, 4381i, global0.a.a, -1i)), _wgslsmith_add_vec4_i32(abs(vec4<i32>(global0.a.a, u_input.a, 1i, var_1)), vec4<i32>(var_1, 2147483647i, global2[_wgslsmith_index_u32(55979u, 14u)], -14565i)), !any(vec3<bool>(arg_0.a.b.x, true, arg_0.a.b.x))), func_4(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, global0.a.a), vec2<i32>(0i, 11546i), vec2<i32>(8653i, arg_1.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a.d.wx * vec2<f32>(1000f, -587f)) - _wgslsmith_f_op_vec2_f32(-arg_1.d.yy)), func_2(-38380i), arg_0)));
    let var_3 = u_input.b.x;
    return arg_0;
}

fn func_6(arg_0: Struct_2, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = vec2<bool>(false, false);
    let var_1 = true;
    var var_2 = func_1(Struct_2(func_2(2147483647i)), Struct_1(_wgslsmith_mod_i32(func_5(arg_0, vec4<i32>(arg_0.a.a, arg_0.a.a, 4510i, global0.a.a) << (u_input.b % vec4<u32>(32u)), !vec2<bool>(var_0.x, global0.a.b.x)).a, max(64789i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 2276i), vec3<i32>(0i, -52157i, 12176i)))), vec3<bool>(var_1, func_4(~vec2<i32>(15773i, 2147483647i), _wgslsmith_f_op_vec2_f32(arg_0.a.d.zw - arg_0.a.d.xz), Struct_1(2147483647i, vec3<bool>(false, global0.a.b.x, global0.a.b.x), -298f, global0.a.d), func_1(arg_0, arg_0.a)).x, (arg_1.x < 4294967295u) | !global0.a.b.x), -1106f, vec4<f32>(arg_0.a.d.x, _wgslsmith_f_op_f32(trunc(func_2(-8268i).d.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -962f), _wgslsmith_f_op_f32(trunc(1123f)))), global0.a.d.x)));
    global2 = array<i32, 14>();
    let var_3 = vec4<u32>(u_input.b.x, _wgslsmith_clamp_u32(arg_1.x, ~u_input.b.x, 59373u << (~_wgslsmith_dot_vec3_u32(u_input.b.wyw, vec3<u32>(59020u, arg_1.x, 4294967295u)) % 32u)), _wgslsmith_dot_vec4_u32(~u_input.b, countOneBits(vec4<u32>(62112u, arg_1.x, arg_1.x, u_input.b.x)) & _wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_1.x, 4294967295u, 2711u), vec4<u32>(0u, 4294967295u, 0u, 35561u) & vec4<u32>(u_input.b.x, 0u, arg_1.x, arg_1.x))), firstLeadingBit(3080u));
    return Struct_1(11931i, vec3<bool>(func_4(select(vec2<i32>(-14931i, -31564i), ~vec2<i32>(var_2.a.a, -2147483647i), var_0.x & true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1004f, -1348f), vec2<f32>(global0.a.d.x, global0.a.c))), func_1(func_1(arg_0, global0.a), func_2(1i)).a, Struct_2(var_2.a)).x, false, var_2.a.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.d.x, _wgslsmith_f_op_f32(round(1143f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1431f + var_2.a.c)), var_2.a.d.x, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1563f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 14>();
    global1 = 3571i;
    global0 = Struct_2(func_6(func_1(Struct_2(Struct_1(global2[_wgslsmith_index_u32(u_input.b.x, 14u)], vec3<bool>(global0.a.b.x, global0.a.b.x, false), global0.a.d.x, vec4<f32>(-294f, -1535f, -448f, 479f))), global0.a), vec2<u32>(u_input.b.x, (u_input.b.x | 102854u) << (u_input.b.x % 32u))));
    global1 = global2[_wgslsmith_index_u32(u_input.b.x, 14u)];
    let var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u & select(15811u, u_input.b.x, false), abs(~4294967295u), 1u, ~(~0u)), _wgslsmith_mod_vec4_u32(~u_input.b, u_input.b)), u_input.b.x);
    var var_1 = func_5(Struct_2(Struct_1(firstLeadingBit(i32(-1i) * -1i), vec3<bool>(global0.a.b.x || true, global0.a.b.x != false, true | global0.a.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.a.c)) * _wgslsmith_f_op_f32(f32(-1f) * -1716f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(714f, -399f, -617f, global0.a.c)))), ~min(~_wgslsmith_mod_vec4_i32(vec4<i32>(-12500i, global0.a.a, global2[_wgslsmith_index_u32(4294967295u, 14u)], 2147483647i), vec4<i32>(global2[_wgslsmith_index_u32(var_0.x, 14u)], u_input.a, -1i, global0.a.a)), abs(vec4<i32>(1i, u_input.a, global2[_wgslsmith_index_u32(var_0.x, 14u)], global0.a.a))), !vec2<bool>(~25060u >= u_input.b.x, global0.a.b.x));
    var var_2 = 304f;
    var var_3 = Struct_2(func_1(Struct_2(Struct_1(_wgslsmith_mult_i32(-1i, 30125i), !global0.a.b, _wgslsmith_f_op_f32(-global0.a.c), func_2(var_1.a).d)), func_6(func_1(func_1(Struct_2(Struct_1(global2[_wgslsmith_index_u32(u_input.b.x, 14u)], vec3<bool>(var_1.b.x, false, global0.a.b.x), global0.a.c, var_1.d)), global0.a), Struct_1(0i, vec3<bool>(true, false, global0.a.b.x), var_1.d.x, vec4<f32>(770f, 1095f, var_1.c, global0.a.c))), u_input.b.ww)).a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -263f));
}

