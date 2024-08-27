struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(44342u, 0u, 4294967295u), vec3<u32>(48514u, 24112u, 1u), vec3<u32>(1u, 1u, 36069u), vec3<u32>(17551u, 17363u, 7334u), vec3<u32>(14904u, 4585u, 4294967295u), vec3<u32>(1u, 0u, 63753u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(1u, 79498u, 20540u));

var<private> global1: array<Struct_2, 1>;

var<private> global2: Struct_2;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: vec3<f32>) -> bool {
    var var_0 = countOneBits(global2.c.d) >> (_wgslsmith_add_u32(110721u, _wgslsmith_mod_u32(~_wgslsmith_sub_u32(global2.c.e.x, 1u), u_input.b)) % 32u);
    var var_1 = _wgslsmith_f_op_vec3_f32(-arg_0);
    let var_2 = _wgslsmith_mod_vec2_i32(min(_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(global2.c.b, arg_1.x) | vec2<i32>(global2.c.b, global2.c.b)), u_input.a.zy), -(~vec2<i32>(10193i, global2.c.b))), select(-firstLeadingBit(-arg_1.zw), _wgslsmith_mod_vec2_i32(vec2<i32>(reverseBits(global2.c.b), global2.c.b), u_input.a.zy), global2.a));
    var var_3 = ~countOneBits(vec3<u32>(abs(u_input.b), firstLeadingBit(16284u), 4294967295u)) >> (vec3<u32>(~1u, 1u, ~firstLeadingBit(_wgslsmith_mult_u32(0u, u_input.b))) % vec3<u32>(32u));
    global0 = array<vec3<u32>, 8>();
    return global2.c.a;
}

fn func_2(arg_0: vec2<bool>) -> vec3<bool> {
    global0 = array<vec3<u32>, 8>();
    global1 = array<Struct_2, 1>();
    global2 = Struct_2(vec2<bool>(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(174f, global2.c.c.x, global2.c.c.x)), firstTrailingBit(-vec4<i32>(0i, 2147483647i, global2.c.b, global2.c.b)), vec3<f32>(_wgslsmith_div_f32(-437f, -2233f), _wgslsmith_f_op_f32(ceil(global2.c.c.x)), _wgslsmith_f_op_f32(-global2.b))), true), _wgslsmith_f_op_f32(sign(global2.b)), Struct_1(func_3(vec3<f32>(global2.c.c.x, global2.b, _wgslsmith_div_f32(1180f, -915f)), _wgslsmith_add_vec4_i32(-vec4<i32>(global2.c.b, 22235i, u_input.a.x, u_input.a.x), vec4<i32>(-22122i, u_input.a.x, u_input.a.x, global2.c.b) << (vec4<u32>(4897u, 319u, global2.c.e.x, global2.c.d) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.c.x, global2.c.c.x, global2.b))), -abs(u_input.a.x) << (22227u % 32u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global2.c.c, vec3<f32>(-1240f, global2.c.c.x, global2.c.c.x))) * _wgslsmith_f_op_vec3_f32(-global2.c.c)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(global2.c.c.x, global2.b, global2.b), vec3<f32>(476f, global2.c.c.x, global2.c.c.x)), global2.c.c, true))), 1u, abs(abs(global0[_wgslsmith_index_u32(~global2.c.e.x, 8u)]))));
    let var_0 = ~(i32(-1i) * -1i);
    let var_1 = global1[_wgslsmith_index_u32(0u, 1u)];
    return vec3<bool>(true, !var_1.a.x, 1135f != global2.c.c.x);
}

fn func_1() -> Struct_1 {
    var var_0 = select(!func_2(!select(global2.a, global2.a, vec2<bool>(global2.a.x, global2.a.x))), !vec3<bool>(false, !global2.a.x, select(global2.c.a, true, u_input.b <= 1u)), ~global2.c.d <= global2.c.d);
    var var_1 = Struct_1(true || var_0.x, global2.c.b, global2.c.c, 4294967295u, ~select(select(vec3<u32>(global2.c.d, global2.c.d, 132184u), global0[_wgslsmith_index_u32(u_input.b, 8u)], vec3<bool>(false, false, global2.c.a)), countOneBits(global0[_wgslsmith_index_u32(global2.c.d, 8u)]), global2.a.x) >> (select(~(~vec3<u32>(u_input.b, u_input.b, global2.c.e.x)), _wgslsmith_add_vec3_u32(global2.c.e, vec3<u32>(1u, u_input.b, 1u)) ^ global0[_wgslsmith_index_u32(global2.c.d, 8u)], vec3<bool>(true, !global2.a.x, true)) % vec3<u32>(32u)));
    let var_2 = ~(select(_wgslsmith_mult_vec2_i32(-u_input.a.zx, u_input.a.zx), vec2<i32>(_wgslsmith_mult_i32(u_input.a.x, -48740i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 46234i, var_1.b, u_input.a.x), vec4<i32>(u_input.a.x, var_1.b, u_input.a.x, 1i))), select(vec2<bool>(false, true), select(var_0.yx, vec2<bool>(false, false), global2.a), func_3(vec3<f32>(-1000f, var_1.c.x, -1170f), vec4<i32>(var_1.b, u_input.a.x, global2.c.b, u_input.a.x), global2.c.c))) << ((abs(global2.c.e.xx) & var_1.e.zy) % vec2<u32>(32u)));
    let var_3 = firstLeadingBit(u_input.b);
    let var_4 = global2.c;
    return global2.c;
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    return global1[_wgslsmith_index_u32(84509u, 1u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.a.x;
    let var_1 = func_4(-u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(-max(global2.c.b, u_input.a.x), global2.c.b), reverseBits(u_input.a.x) >> (~(~u_input.b) % 32u)), func_1(), global2.c);
    global0 = array<vec3<u32>, 8>();
    let var_2 = Struct_2(!var_1.a, 1f, global2.c);
    let var_3 = global1[_wgslsmith_index_u32(~var_1.c.e.x, 1u)];
    let var_4 = u_input.a >> (~abs(vec3<u32>(_wgslsmith_sub_u32(68050u, 1u), 1u, 0u)) % vec3<u32>(32u));
    global1 = array<Struct_2, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -6876i, firstTrailingBit(~var_1.c.e.x));
}

