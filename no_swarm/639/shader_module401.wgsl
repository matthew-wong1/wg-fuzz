struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(vec4<i32>(-31913i, -14085i, 53480i, -8396i), vec4<bool>(false, false, false, true)), Struct_4(vec4<i32>(-20388i, 10641i, i32(-2147483648), 0i), vec4<bool>(false, true, false, true)));

var<private> global1: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(1037f, 158f), vec2<f32>(1021f, 282f), vec2<f32>(-1000f, -818f), vec2<f32>(-434f, 109f), vec2<f32>(-855f, -294f), vec2<f32>(1742f, -103f), vec2<f32>(-256f, 607f), vec2<f32>(-1222f, 735f), vec2<f32>(-1348f, -624f), vec2<f32>(147f, 1304f), vec2<f32>(-817f, -905f), vec2<f32>(159f, 1230f), vec2<f32>(100f, 876f));

var<private> global2: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(-3098i, vec4<i32>(-4759i, 1i, 8805i, 2147483647i), vec3<u32>(35242u, 0u, 53648u)), Struct_1(16027i, vec4<i32>(-1i, 22553i, 0i, 0i), vec3<u32>(45580u, 1u, 4294967295u)), Struct_1(37658i, vec4<i32>(1i, 1i, 28549i, -14604i), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), Struct_1(-43694i, vec4<i32>(0i, 11757i, 54848i, -11641i), vec3<u32>(0u, 88279u, 8441u)), Struct_1(2147483647i, vec4<i32>(-1i, -32976i, 6305i, 1i), vec3<u32>(4294967295u, 536u, 0u)), Struct_1(0i, vec4<i32>(8802i, -24815i, i32(-2147483648), 1i), vec3<u32>(62556u, 0u, 49682u)), Struct_1(2147483647i, vec4<i32>(13159i, 0i, 2147483647i, -1i), vec3<u32>(79867u, 4366u, 0u)), Struct_1(-63496i, vec4<i32>(17989i, 0i, -28076i, 1i), vec3<u32>(11493u, 4294967295u, 2417u)), Struct_1(i32(-2147483648), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), -42720i), vec3<u32>(1u, 1u, 110474u)), Struct_1(7337i, vec4<i32>(2147483647i, 21747i, 12703i, i32(-2147483648)), vec3<u32>(0u, 78638u, 1u)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<i32> {
    let var_0 = ~72351u;
    let var_1 = vec3<bool>(true, var_0 >= _wgslsmith_add_u32(u_input.e, ~(var_0 << (36205u % 32u))), true);
    let var_2 = Struct_2(Struct_1(~0i, -vec4<i32>(~0i, min(u_input.c, u_input.d.x), 0i, -1i), u_input.b), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-457f)), 1125f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-736f, 479f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1062f, 254f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(690f, 507f))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 1u), 13u)]), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 13u)]), _wgslsmith_f_op_vec2_f32(select(global1[_wgslsmith_index_u32(var_0, 13u)], var_2.b, vec2<bool>(false, var_1.x)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1671f, var_2.b.x))), vec2<f32>(var_2.b.x, 382f)))));
    var var_4 = var_2;
    return vec4<i32>(1i, var_2.a.a, -16096i, -1i << (var_4.a.c.x % 32u));
}

fn func_2() -> u32 {
    let var_0 = u_input.c;
    var var_1 = 981f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1347f)) + 534f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -110f), -539f));
    let var_2 = Struct_5(Struct_1(-(~firstTrailingBit(u_input.d.x)), -u_input.d, vec3<u32>(83410u, 12476u, 0u)), Struct_4(_wgslsmith_div_vec4_i32(u_input.d, func_3()), vec4<bool>(true, true, false, true)), u_input.a, ~firstTrailingBit(4294967295u));
    var var_3 = var_2.b;
    return ~_wgslsmith_mult_u32(_wgslsmith_add_u32(reverseBits(u_input.e) | ~var_2.d, reverseBits(var_2.a.c.x) >> (~var_2.a.c.x % 32u)), ~var_2.a.c.x);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: i32, arg_3: bool) -> u32 {
    return ~(~u_input.a ^ ~24853u);
}

fn func_1() -> Struct_2 {
    let var_0 = !select(vec4<bool>(true, true, true, any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)))), vec4<bool>(all(vec3<bool>(true, false, true)), true, true, true), vec4<bool>(true, _wgslsmith_div_i32(u_input.c, 2147483647i) > _wgslsmith_div_i32(u_input.c, -2147483647i), any(vec4<bool>(true, true, true, true)), 1i <= _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, -9062i, u_input.c), vec3<i32>(-24658i, -2147483647i, -5970i))));
    global1 = array<vec2<f32>, 13>();
    var var_1 = -2825i != ~firstLeadingBit(-u_input.d.x | -31747i);
    let var_2 = vec3<u32>(~func_4(global0[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(5704u, u_input.e), func_2()), 2u)], Struct_4(u_input.d, !var_0), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.c, u_input.d.x, 2980i), ~vec4<i32>(u_input.d.x, -3575i, u_input.c, 0i)), (u_input.c | u_input.c) > 33433i), 1u, ~max(0u, u_input.a));
    var var_3 = ~vec4<u32>(var_2.x, 36979u, 4294967295u, _wgslsmith_dot_vec2_u32(~max(vec2<u32>(var_2.x, 13401u), vec2<u32>(var_2.x, u_input.a)), ~u_input.b.zy));
    return Struct_2(global2[_wgslsmith_index_u32(8162u, 10u)], _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -229f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(776f, -538f), _wgslsmith_f_op_f32(-1429f + -1718f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(210f, 1742f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = array<vec2<f32>, 13>();
    let var_1 = u_input.b.xz;
    global0 = array<Struct_4, 2>();
    var_0 = Struct_2(Struct_1(u_input.d.x, u_input.d, abs(vec3<u32>(~u_input.a, firstTrailingBit(62597u), func_2()))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(min(450f, 209f))), _wgslsmith_f_op_f32(f32(-1f) * -1009f)) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global1[_wgslsmith_index_u32(18312u, 13u)])) * vec2<f32>(var_0.b.x, var_0.b.x)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-859f, var_0.b.x)))))))));
    var var_2 = abs(~vec4<u32>(127701u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(12642u, 27921u), var_0.a.c.zz), firstTrailingBit(var_1.x), ~4942u << (~var_0.a.c.x % 32u), var_0.a.c.x >> (4294967295u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~26799u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - var_0.b.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1412f))))), _wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1155f, 199f)))), ~vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 82000u, 648u, 0u), vec4<u32>(0u, var_1.x, var_1.x, 1u)), func_1().a.c.x, _wgslsmith_mult_u32(var_2.x, ~var_1.x)));
}

