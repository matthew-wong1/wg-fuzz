struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9> = array<bool, 9>(true, true, true, false, true, false, true, true, true);

var<private> global1: u32 = 0u;

var<private> global2: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(vec2<i32>(-1i, -34417i)), Struct_3(vec2<i32>(0i, 2147483647i)), Struct_3(vec2<i32>(66926i, -17416i)), Struct_3(vec2<i32>(25689i, -61553i)), Struct_3(vec2<i32>(-34274i, 1i)), Struct_3(vec2<i32>(i32(-2147483648), 2147483647i)), Struct_3(vec2<i32>(i32(-2147483648), 2147483647i)), Struct_3(vec2<i32>(1i, 818i)), Struct_3(vec2<i32>(-49856i, -1i)), Struct_3(vec2<i32>(-27672i, -26617i)), Struct_3(vec2<i32>(0i, i32(-2147483648))), Struct_3(vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_3(vec2<i32>(2147483647i, -2464i)), Struct_3(vec2<i32>(-5658i, 2147483647i)), Struct_3(vec2<i32>(-11334i, 1i)), Struct_3(vec2<i32>(1i, -74172i)), Struct_3(vec2<i32>(1i, 2147483647i)), Struct_3(vec2<i32>(-50939i, -51776i)), Struct_3(vec2<i32>(1i, 1i)), Struct_3(vec2<i32>(34820i, -2617i)), Struct_3(vec2<i32>(99043i, 20231i)), Struct_3(vec2<i32>(-24530i, 2147483647i)), Struct_3(vec2<i32>(-14925i, 1i)), Struct_3(vec2<i32>(-18467i, -23164i)), Struct_3(vec2<i32>(-37370i, 2147483647i)), Struct_3(vec2<i32>(2147483647i, 0i)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<u32>) -> u32 {
    let var_0 = _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 0i) & vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(u_input.a, u_input.c.x)), ~u_input.c.zz), -u_input.c.zz);
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~arg_2.x), 91859u), 26u)];
    let var_2 = !any(vec2<bool>(true, arg_1.b.x));
    let var_3 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1072f));
    global2 = array<Struct_3, 26>();
    return u_input.b.x;
}

fn func_3() -> f32 {
    global2 = array<Struct_3, 26>();
    return 1f;
}

fn func_2(arg_0: u32) -> StorageBuffer {
    global0 = array<bool, 9>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(1293f, _wgslsmith_f_op_f32(func_3())), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(564f, 343f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -139f) * -385f)), _wgslsmith_f_op_f32(-320f - _wgslsmith_f_op_f32(-983f + -357f))));
    let var_1 = Struct_3(_wgslsmith_sub_vec2_i32(-(vec2<i32>(-61466i, 0i) | u_input.c.zz), _wgslsmith_div_vec2_i32(vec2<i32>(0i, u_input.a) >> (vec2<u32>(17120u, u_input.d.x) % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(u_input.c.x, 22234i)))) & vec2<i32>(max(-u_input.a, countOneBits(1385i)), 20904i));
    var var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(52910i, ~var_1.a.x, ~abs(i32(-1i) * -1386i)), u_input.c);
    var_2 = abs(vec3<i32>(-2147483647i, ~var_1.a.x, _wgslsmith_sub_i32(-u_input.a, firstTrailingBit(var_2.x | 0i))));
    return StorageBuffer(_wgslsmith_mult_vec3_i32(firstTrailingBit(countOneBits(vec3<i32>(var_1.a.x, var_2.x, 1i))), ~u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 9>();
    var var_0 = select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 9u)]), vec2<bool>(!global0[_wgslsmith_index_u32(~u_input.d.x, 9u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, ~u_input.d.x), 9u)]), global0[_wgslsmith_index_u32((firstLeadingBit(u_input.d.x) ^ ~u_input.d.x) & 1165u, 9u)]), vec2<bool>(global0[_wgslsmith_index_u32(~func_1(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b.x, 9u)], global0[_wgslsmith_index_u32(u_input.d.x, 9u)]), Struct_1(-925f, vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 9u)], true)), ~vec4<u32>(u_input.d.x, u_input.d.x, 26364u, 0u)), 9u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1059f, -508f))) < _wgslsmith_f_op_f32(max(-492f, _wgslsmith_f_op_f32(step(640f, 2259f))))), !(!select(true, global0[_wgslsmith_index_u32(u_input.b.x, 9u)], true)) || !(!any(vec2<bool>(global0[_wgslsmith_index_u32(1u, 9u)], false))));
    let var_1 = countOneBits(u_input.b.x);
    global0 = array<bool, 9>();
    global0 = array<bool, 9>();
    global0 = array<bool, 9>();
    let var_2 = !(2147483647i <= max(u_input.a, u_input.a << (12522u % 32u)));
    let x = u_input.a;
    s_output = func_2(~_wgslsmith_mod_u32(u_input.d.x & 4294967295u, var_1 >> (u_input.d.x % 32u)) ^ abs(reverseBits(firstLeadingBit(2761u))));
}

