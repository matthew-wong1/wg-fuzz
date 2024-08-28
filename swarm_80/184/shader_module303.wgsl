struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: Struct_2,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 19> = array<vec3<u32>, 19>(vec3<u32>(49206u, 1u, 1777u), vec3<u32>(26941u, 38630u, 7659u), vec3<u32>(0u, 41411u, 0u), vec3<u32>(4294967295u, 89929u, 20408u), vec3<u32>(1u, 4294967295u, 25733u), vec3<u32>(40193u, 43761u, 4294967295u), vec3<u32>(80657u, 0u, 4294967295u), vec3<u32>(1u, 25324u, 0u), vec3<u32>(15279u, 0u, 1u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(1u, 6396u, 38711u), vec3<u32>(12791u, 0u, 1u), vec3<u32>(0u, 1u, 1u), vec3<u32>(19443u, 0u, 50823u), vec3<u32>(3525u, 4294967295u, 1u), vec3<u32>(64442u, 11016u, 49075u), vec3<u32>(15116u, 97368u, 1u), vec3<u32>(1u, 0u, 46818u), vec3<u32>(4294967295u, 0u, 57577u));

var<private> global1: array<vec3<u32>, 25>;

var<private> global2: array<Struct_3, 20>;

var<private> global3: array<f32, 32> = array<f32, 32>(263f, 458f, 1191f, 1571f, 130f, -1000f, -714f, 630f, -150f, 879f, 682f, -163f, -1496f, 1022f, -1000f, 1000f, 1035f, 1370f, 291f, 257f, -1000f, 1556f, -289f, -597f, 1000f, 525f, 596f, -1000f, -1076f, -241f, -590f, -598f);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(u_input.a, 20u)];
    var_0 = global2[_wgslsmith_index_u32((countOneBits(_wgslsmith_clamp_u32(53386u, var_0.c.c.a, 26523u) << (countOneBits(u_input.a) % 32u)) | 41963u) | var_0.c.c.a, 20u)];
    let var_1 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(trunc(-2022f)), _wgslsmith_f_op_f32(-190f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -789f)))));
    global2 = array<Struct_3, 20>();
    global0 = array<vec3<u32>, 19>();
    return min(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(u_input.a, 19u)], ~(~vec3<u32>(var_0.c.c.a, 71151u, 4294967295u))), var_0.c.c.a);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> bool {
    var var_0 = ~2147483647i;
    global1 = array<vec3<u32>, 25>();
    var var_1 = Struct_2(!select(vec4<bool>(arg_2.b.x != arg_1.b.x, true, true, true), select(!arg_0.c, select(vec4<bool>(true, false, arg_2.c.c.b.x, false), vec4<bool>(arg_1.c.c.b.x, true, arg_2.c.a.x, arg_0.b.x), vec4<bool>(false, true, arg_1.c.a.x, arg_0.c.x)), arg_1.c.a.x), false), _wgslsmith_f_op_f32(-arg_2.c.b), Struct_1(~arg_2.c.c.a, vec4<bool>(arg_2.c.a.x, true, true, false), arg_2.c.c.c));
    let var_2 = global2[_wgslsmith_index_u32(53986u, 20u)];
    let var_3 = ~arg_2.c.c.a;
    return true;
}

fn func_1() -> Struct_2 {
    global3 = array<f32, 32>();
    var var_0 = false;
    var_0 = !func_3(Struct_1(_wgslsmith_div_u32(u_input.a, u_input.a), vec4<bool>(true, true, true, true), vec4<bool>(true, 34825u > u_input.a, all(vec4<bool>(true, true, false, true)), all(vec4<bool>(false, true, true, false)))), global2[_wgslsmith_index_u32(func_2(), 20u)], global2[_wgslsmith_index_u32(max(func_2(), 28136u), 20u)]);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(553f)) + -2366f)), global3[_wgslsmith_index_u32(u_input.a, 32u)]);
    let var_2 = Struct_2(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_1(_wgslsmith_mod_u32(u_input.a << (u_input.a % 32u), 1u) >> (_wgslsmith_sub_u32(u_input.a, func_2()) % 32u), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    return Struct_2(var_2.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 32u)]), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.b * var_2.b))), true)), var_2.b)), var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 20>();
    var var_0 = func_1();
    let var_1 = func_1().c;
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1271f, global3[_wgslsmith_index_u32(var_0.c.a, 32u)]) + vec2<f32>(global3[_wgslsmith_index_u32(50800u, 32u)], 283f)), vec2<f32>(-599f, 674f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(119f, 1333f), vec2<f32>(global3[_wgslsmith_index_u32(u_input.a, 32u)], var_0.b))) + vec2<f32>(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(42299u, var_1.a, u_input.a), 32u)], var_0.b)), any(select(func_1().a, vec4<bool>(var_1.c.x, false, false, var_1.b.x), var_0.a.x)))), vec2<f32>(_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(floor(-640f))), _wgslsmith_f_op_f32(279f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(1u, 32u)], var_0.b))))));
    let var_3 = global2[_wgslsmith_index_u32(~(~var_1.a), 20u)];
    var_0 = Struct_2(vec4<bool>(var_0.a.x, any(func_1().c.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-892f))) == _wgslsmith_f_op_f32(-var_2.x), var_1.b.x), var_2.x, func_1().c);
    global3 = array<f32, 32>();
    var var_4 = abs(_wgslsmith_mod_vec3_i32(countOneBits(firstLeadingBit(-vec3<i32>(var_3.b.x, var_3.b.x, var_3.b.x))), -_wgslsmith_mult_vec3_i32(var_3.b, var_3.b & vec3<i32>(6382i, 20886i, var_3.b.x))));
    var var_5 = ~(~_wgslsmith_clamp_u32(4294967295u, _wgslsmith_div_u32(6597u, abs(var_3.c.c.a)), _wgslsmith_div_u32(~var_0.c.a, _wgslsmith_mod_u32(var_1.a, var_0.c.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(22976u, u_input.a, 0u, var_1.a), vec4<u32>(4294967295u, var_3.c.c.a, var_3.c.c.a, var_1.a))) & vec4<u32>(1094u, 0u, 4670u, abs(4294967295u)), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, var_0.c.a, 20724u, u_input.a), ~vec4<u32>(var_0.c.a, var_1.a, 36010u, 7069u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(1u, var_3.c.c.a, 58224u, var_3.c.c.a), vec4<u32>(u_input.a, 0u, 28670u, var_3.c.c.a)))), var_4.xx, 694f);
}

