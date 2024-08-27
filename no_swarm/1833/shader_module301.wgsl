struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec2<bool>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24> = array<bool, 24>(true, false, true, true, true, true, false, true, true, true, false, true, false, false, true, true, true, false, true, false, true, false, true, false);

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(-15279i, vec4<bool>(false, false, false, true), vec2<bool>(false, false), vec2<f32>(1201f, 1055f)), Struct_1(27086i, vec4<bool>(true, false, true, false), vec2<bool>(false, true), vec2<f32>(481f, -746f)), Struct_1(-36849i, vec4<bool>(false, false, true, false), vec2<bool>(true, false), vec2<f32>(578f, -1000f)), Struct_1(0i, vec4<bool>(false, false, false, true), vec2<bool>(true, false), vec2<f32>(-521f, 1433f)), Struct_1(0i, vec4<bool>(true, false, true, true), vec2<bool>(false, false), vec2<f32>(-269f, -372f)), Struct_1(2147483647i, vec4<bool>(false, true, true, false), vec2<bool>(false, false), vec2<f32>(-934f, -1880f)), Struct_1(1i, vec4<bool>(false, true, false, true), vec2<bool>(false, true), vec2<f32>(646f, -495f)), Struct_1(53537i, vec4<bool>(false, false, false, false), vec2<bool>(false, true), vec2<f32>(-375f, -1456f)), Struct_1(i32(-2147483648), vec4<bool>(true, true, true, false), vec2<bool>(false, true), vec2<f32>(839f, -505f)), Struct_1(i32(-2147483648), vec4<bool>(true, true, false, false), vec2<bool>(true, false), vec2<f32>(-996f, 132f)), Struct_1(-1i, vec4<bool>(true, false, true, false), vec2<bool>(true, true), vec2<f32>(-304f, -1477f)), Struct_1(-293i, vec4<bool>(true, true, true, true), vec2<bool>(true, false), vec2<f32>(-897f, 470f)), Struct_1(24463i, vec4<bool>(true, false, false, false), vec2<bool>(true, true), vec2<f32>(170f, 491f)), Struct_1(-1i, vec4<bool>(false, false, false, true), vec2<bool>(false, true), vec2<f32>(-651f, -597f)), Struct_1(-2639i, vec4<bool>(false, true, true, false), vec2<bool>(true, false), vec2<f32>(-233f, 183f)), Struct_1(-1i, vec4<bool>(false, false, true, false), vec2<bool>(false, false), vec2<f32>(1000f, -2037f)), Struct_1(i32(-2147483648), vec4<bool>(true, true, true, false), vec2<bool>(false, false), vec2<f32>(-654f, -951f)));

var<private> global2: Struct_1;

var<private> global3: i32;

var<private> global4: Struct_1;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global4 = global1[_wgslsmith_index_u32(23888u, 17u)];
    global0 = array<bool, 24>();
    var var_0 = Struct_1(0i, arg_0.b, arg_1.c, vec2<f32>(-1247f, arg_0.d.x));
    global3 = _wgslsmith_mult_i32(firstTrailingBit(global4.a), 0i);
    var var_1 = arg_0;
    return _wgslsmith_mult_i32(~(-18047i), -1i);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = global4.b.yyw;
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.d.x), global4.d.x) + _wgslsmith_f_op_f32(f32(-1f) * -545f)), _wgslsmith_div_f32(475f, 923f), global4.d.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_0.d.x, _wgslsmith_f_op_f32(global2.d.x + -479f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1178f))), _wgslsmith_div_f32(-308f, _wgslsmith_f_op_f32(floor(global2.d.x))))));
    let var_2 = arg_0;
    global1 = array<Struct_1, 17>();
    global3 = -1i;
    return Struct_1(func_3(Struct_1(max(var_2.a, -7908i), var_2.b, select(vec2<bool>(var_0.x, false), var_0.xz, global4.b.x & false), var_2.d), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, ~70841u), 17u)]), select(select(select(select(vec4<bool>(true, false, true, global2.c.x), vec4<bool>(true, true, true, false), var_0.x), select(vec4<bool>(true, global4.b.x, global4.c.x, var_2.b.x), vec4<bool>(global4.b.x, false, true, global0[_wgslsmith_index_u32(64315u, 24u)]), global2.c.x), global4.c.x), !(!global4.b), vec4<bool>(false, all(vec2<bool>(false, true)), var_0.x, true)), global2.b, vec4<bool>(arg_0.b.x, !all(global4.b), select(true, global2.b.x, all(arg_0.b.ww)), all(!vec2<bool>(var_2.c.x, false)))), vec2<bool>(global0[_wgslsmith_index_u32(10391u, 24u)], true), vec2<f32>(_wgslsmith_f_op_f32(min(-763f, global2.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) - _wgslsmith_f_op_f32(floor(arg_0.d.x))), _wgslsmith_f_op_f32(f32(-1f) * -622f))));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = func_2(global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 61552u, 0u, 35053u), ~vec4<u32>(57778u, 4294967295u, 0u, 0u)) >> (abs(min(12431u, 1u)) % 32u)), 17u)]);
    var var_1 = arg_1;
    global4 = arg_1;
    let var_2 = var_0;
    let var_3 = var_2.a;
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d.x, 245f, 676f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 211f, 541f)))))));
    var var_1 = global1[_wgslsmith_index_u32(0u, 17u)];
    global2 = Struct_1(arg_1, !vec4<bool>(!global2.b.x, global0[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(53140u, 1u)), 24u)], true, true), var_1.b.zx, global4.d);
    let var_2 = _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>((-1i & var_1.a) | global4.a, reverseBits(u_input.a.x))) >= ~global4.a;
    global4 = global1[_wgslsmith_index_u32(44788u, 17u)];
    return ~abs(~29300u);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, ~(~1u)), 10555u), 17u)];
    let var_0 = vec3<u32>(~(~1u), _wgslsmith_div_u32(_wgslsmith_div_u32(1u, _wgslsmith_sub_u32(13498u, 1u)), func_4(func_1(global4.d.x, Struct_1(u_input.a.x, global2.b, vec2<bool>(global4.b.x, global2.b.x), global4.d), -10692i, u_input.a), global4.a, true)) & max(_wgslsmith_dot_vec2_u32(~vec2<u32>(67386u, 50213u), ~vec2<u32>(16795u, 4294967295u)), select(4294967295u, 39734u, true)), ~(~33336u));
    global1 = array<Struct_1, 17>();
    let var_1 = firstLeadingBit(vec2<u32>(var_0.x, func_4(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 0u), vec2<u32>(var_0.x, 4294967295u)), 17u)], global2.a, !global4.b.x)) ^ var_0.zz);
    global2 = global1[_wgslsmith_index_u32(~1u, 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_1.x ^ 40358u, var_1.x, var_1.x, var_1.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(global1[_wgslsmith_index_u32(var_1.x, 17u)]).d.x) - _wgslsmith_f_op_f32(-746f - -308f)), func_1(global4.d.x, global1[_wgslsmith_index_u32(1u, 17u)], global2.a, firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(28426i, 12986i), u_input.b.zx))).d.x, 1f, _wgslsmith_f_op_f32(-1993f * global2.d.x)), select(_wgslsmith_mult_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(global4.a, global2.a, 32758i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.b.x, 54198i, -4778i)), vec4<i32>(global2.a, u_input.b.x, u_input.b.x, -1i) & firstTrailingBit(vec4<i32>(u_input.a.x, 32693i, -2147483647i, global2.a))), select(select(vec4<i32>(global2.a, 2147483647i, global2.a, global4.a), vec4<i32>(u_input.b.x, 0i, global2.a, global2.a), vec4<bool>(global4.c.x, global4.b.x, global2.b.x, true)) | -vec4<i32>(2147483647i, global2.a, global4.a, 47922i), vec4<i32>(-28891i, _wgslsmith_dot_vec4_i32(vec4<i32>(global4.a, -23667i, 0i, 2147483647i), vec4<i32>(1i, 1i, -40054i, u_input.b.x)), ~1i, func_3(global1[_wgslsmith_index_u32(15221u, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)])), global0[_wgslsmith_index_u32(1u, 24u)]), false));
}

