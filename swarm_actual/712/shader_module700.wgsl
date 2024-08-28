struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<f32>,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28>;

var<private> global1: u32 = 12647u;

var<private> global2: f32;

var<private> global3: array<vec4<bool>, 22> = array<vec4<bool>, 22>(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_2) -> u32 {
    return u_input.b;
}

fn func_2(arg_0: i32) -> vec3<i32> {
    global1 = ~4294967295u;
    var var_0 = Struct_4(Struct_2(select(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), true), Struct_1(u_input.a, u_input.b, vec2<bool>(true, true), true), Struct_1(~(-vec3<i32>(-2354i, -10589i, 1i)), _wgslsmith_div_u32(~1u, 7192u ^ u_input.b), select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, false), vec2<bool>(false, false)), true || (arg_0 < 10588i)), u_input.a, ~func_3(Struct_2(vec2<bool>(false, true), Struct_1(u_input.a, u_input.b, vec2<bool>(false, true), false), Struct_1(u_input.a, u_input.b, vec2<bool>(true, true), true), vec3<i32>(arg_0, 31927i, u_input.d), 63843u))), Struct_1(~(~(vec3<i32>(u_input.c, -39594i, 0i) ^ vec3<i32>(-27780i, arg_0, -38211i))), _wgslsmith_sub_u32(11916u, u_input.b), vec2<bool>(true, true), true), vec2<f32>(-542f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(373f * -416f))))), u_input.b, Struct_3(true, Struct_1(vec3<i32>(0i, -2147483647i ^ arg_0, ~u_input.c), min(~1u, _wgslsmith_add_u32(0u, u_input.b)), vec2<bool>(all(global3[_wgslsmith_index_u32(u_input.b, 22u)]), true), all(select(global3[_wgslsmith_index_u32(6669u, 22u)], global3[_wgslsmith_index_u32(26499u, 22u)], true)))));
    var var_1 = Struct_4(var_0.a, Struct_1(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, arg_0, -11046i) << (vec3<u32>(var_0.b.b, 0u, 20903u) % vec3<u32>(32u)), vec3<i32>(var_0.a.b.a.x, var_0.a.d.x, u_input.d)), 37124u, select(select(!var_0.e.b.c, vec2<bool>(true, var_0.e.b.d), var_0.b.c), select(vec2<bool>(false, true), var_0.b.c, !var_0.b.c), select(!var_0.b.c, select(var_0.a.a, var_0.a.a, var_0.a.c.c), var_0.b.c.x)), !var_0.a.b.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.c, var_0.c)), var_0.c)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-621f, _wgslsmith_f_op_f32(-var_0.c.x))))), 4294967295u, Struct_3(true, var_0.b));
    var_0 = Struct_4(var_1.a, var_0.b, _wgslsmith_f_op_vec2_f32(max(var_1.c, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c)), _wgslsmith_div_vec2_f32(var_0.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, 223f))))))), var_0.d | ~var_0.e.b.b, Struct_3(var_1.b.d, Struct_1(var_1.e.b.a, 109548u, select(var_0.a.b.c, var_1.a.a, 31234i <= u_input.d), var_0.a.b.c.x)));
    var var_2 = var_0.e;
    return var_2.b.a & ~(vec3<i32>(var_0.e.b.a.x, ~10965i, 2147483647i) >> (vec3<u32>(var_2.b.b, 20013u << (1u % 32u), _wgslsmith_clamp_u32(var_1.e.b.b, u_input.b, u_input.b)) % vec3<u32>(32u)));
}

fn func_1(arg_0: Struct_2) -> bool {
    global1 = ~(~22000u);
    global0 = array<Struct_3, 28>();
    let var_0 = -func_2(arg_0.d.x);
    var var_1 = Struct_1(countOneBits(_wgslsmith_mult_vec3_i32(select(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, var_0.x, -2147483647i), u_input.a), vec3<i32>(-33571i, 7147i, arg_0.c.a.x), any(vec3<bool>(arg_0.a.x, arg_0.b.d, arg_0.a.x))), vec3<i32>(-1i) * -vec3<i32>(0i, u_input.a.x, arg_0.d.x))), ~(~_wgslsmith_clamp_u32(arg_0.e << (1u % 32u), u_input.b | u_input.b, u_input.b)), select(arg_0.c.c, arg_0.a, !select(arg_0.a, arg_0.b.c, arg_0.a.x)), arg_0.c.c.x);
    global2 = 1000f;
    return var_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 966f;
    let var_1 = !all(vec3<bool>(func_1(Struct_2(vec2<bool>(true, false), Struct_1(u_input.a, u_input.b, vec2<bool>(true, false), false), Struct_1(u_input.a, u_input.b, vec2<bool>(false, true), false), vec3<i32>(-1i, u_input.d, -43244i), 83117u)), all(global3[_wgslsmith_index_u32(u_input.b, 22u)]), select(true, true, true))) & !((22368u >= u_input.b) || false);
    var var_2 = u_input.b;
    var var_3 = Struct_1(vec3<i32>(reverseBits(~1i), u_input.c, abs(_wgslsmith_mod_i32(2147483647i, u_input.d) << (~u_input.b % 32u))), max(~68803u, u_input.b), vec2<bool>(var_1, func_1(Struct_2(vec2<bool>(false, var_1), Struct_1(vec3<i32>(-19897i, u_input.a.x, u_input.d), u_input.b, vec2<bool>(true, false), false), Struct_1(vec3<i32>(u_input.c, 20272i, u_input.d), 0u, vec2<bool>(false, var_1), var_1), vec3<i32>(0i, u_input.d, 2644i), u_input.b))), false);
    let var_4 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~(_wgslsmith_mult_u32(4294967295u, u_input.b) >> (var_3.b % 32u)), min(~1u, ~var_3.b)), 28u)];
    global1 = ~(~(~var_4.b.b));
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec3<u32>(~u_input.b, 4294967295u, select(var_3.b, ~58626u, !var_4.b.c.x)) ^ vec3<u32>(firstLeadingBit(33802u), u_input.b, ~1u));
}

