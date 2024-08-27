struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1>;

var<private> global1: u32 = 24575u;

var<private> global2: array<i32, 13> = array<i32, 13>(0i, -936i, 20615i, -65954i, 2147483647i, i32(-2147483648), 57917i, 50461i, 716i, 14685i, -1i, -24287i, -52224i);

var<private> global3: array<f32, 2> = array<f32, 2>(535f, 257f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_dot_vec2_i32(~((u_input.c.xy | vec2<i32>(-1i, u_input.d)) >> (_wgslsmith_mult_vec2_u32(u_input.e.xx, u_input.e.xx) % vec2<u32>(32u))), u_input.a.zx);
    let var_1 = ~(~vec2<i32>(firstTrailingBit(50597i) ^ 1i, var_0));
    var var_2 = -1i;
    let var_3 = ~92912u;
    global1 = var_3;
    return var_3;
}

fn func_3() -> u32 {
    global0 = array<Struct_3, 1>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(29472u, 2u)], -382f, global3[_wgslsmith_index_u32(u_input.e.x, 2u)]))))), _wgslsmith_clamp_i32(-6798i, ~2147483647i | firstTrailingBit(-12702i), -1i)), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), true)), vec4<bool>(all(vec2<bool>(false, true)), true, _wgslsmith_add_u32(u_input.b, u_input.e.x) <= 0u, !any(vec2<bool>(false, true))), true), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3[_wgslsmith_index_u32(u_input.e.x, 2u)], global3[_wgslsmith_index_u32(u_input.b, 2u)], global3[_wgslsmith_index_u32(u_input.b, 2u)]), _wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(12226u, 2u)], global3[_wgslsmith_index_u32(4294967295u, 2u)], 1368f), vec3<f32>(-381f, 863f, 1648f)), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1758f, global3[_wgslsmith_index_u32(u_input.e.x, 2u)], -584f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3[_wgslsmith_index_u32(u_input.e.x, 2u)], global3[_wgslsmith_index_u32(1u, 2u)], global3[_wgslsmith_index_u32(4294967295u, 2u)]))))), vec3<bool>(all(vec4<bool>(false, true, true, true)), u_input.a.x > u_input.a.x, true))), -21624i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b, 2u)])) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1821f + 317f)))));
    let var_1 = var_0.a.a.x;
    global3 = array<f32, 2>();
    global3 = array<f32, 2>();
    return u_input.b;
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec2<u32>(_wgslsmith_add_u32(func_3(), 45092u), u_input.b);
    var var_1 = global0[_wgslsmith_index_u32(~firstLeadingBit((~var_0.x >> (~var_0.x % 32u)) >> (u_input.b % 32u)), 1u)];
    global0 = array<Struct_3, 1>();
    return var_1.b.c;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    let var_0 = u_input.e.yw;
    global1 = _wgslsmith_mult_u32(u_input.b, ~var_0.x);
    var var_1 = Struct_2(arg_2.c, vec4<bool>(false, arg_2.b.x, all(select(select(arg_2.b.zwx, vec3<bool>(true, arg_2.b.x, arg_2.b.x), arg_2.b.ywz), arg_2.b.yzx, select(false, true, arg_2.b.x))), select(false, true, ~arg_1.b == arg_1.b)), arg_2.c, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 2u)] + arg_1.a.x));
    var var_2 = arg_2;
    var_1 = arg_2;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-609f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.a.x + var_2.a.a.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.c.a.x, arg_1.a.x), 702f))), _wgslsmith_sub_i32(-2147483647i, ~arg_2.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~(u_input.c >> (abs(vec3<u32>(u_input.b, 11858u, 1u) ^ u_input.e.yyy) % vec3<u32>(32u))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3[_wgslsmith_index_u32(9119u, 2u)], global3[_wgslsmith_index_u32(u_input.e.x, 2u)])), global3[_wgslsmith_index_u32(~1u, 2u)], 389f), -24985i), Struct_2(func_2(func_1(), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(u_input.b, 2u)], global3[_wgslsmith_index_u32(u_input.e.x, 2u)], 1222f) * vec3<f32>(global3[_wgslsmith_index_u32(43187u, 2u)], global3[_wgslsmith_index_u32(106999u, 2u)], 799f)), -2147483647i)), vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -267f) <= _wgslsmith_f_op_f32(floor(-2848f)), all(vec3<bool>(true, true, true)), true, true), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1382f, -356f, global3[_wgslsmith_index_u32(1u, 2u)]))), _wgslsmith_div_i32(4194i << (u_input.b % 32u), 0i)), -1225f));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(90999u, 2u)], -383f, var_0.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(1u, 2u)], global3[_wgslsmith_index_u32(4294967295u, 2u)], var_0.a.x) * vec3<f32>(global3[_wgslsmith_index_u32(0u, 2u)], 324f, global3[_wgslsmith_index_u32(u_input.b, 2u)])), true))))), i32(-1i) * -8769i);
    let var_1 = ~(~1u);
    let var_2 = vec4<i32>(15961i, i32(-1i) * -2147483647i, 16471i, _wgslsmith_clamp_i32(i32(-1i) * -countOneBits(var_0.b), ~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.zy, u_input.a.yz), u_input.c.zy), 35643i));
    var var_3 = -firstTrailingBit(abs(_wgslsmith_sub_vec4_i32(var_2, var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(282f, _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(var_0.a.x + -1263f)));
}

