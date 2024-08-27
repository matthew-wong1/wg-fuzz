struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec4<i32>,
    d: Struct_2,
    e: vec2<f32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 30>;

var<private> global1: vec3<u32>;

var<private> global2: array<i32, 23> = array<i32, 23>(-1i, 54024i, 53251i, -1i, -1i, -37459i, 0i, -1i, 1i, -47221i, 1i, 31983i, 0i, 17085i, -1i, 1i, i32(-2147483648), 0i, 11460i, -867i, -44267i, 36625i, 39168i);

var<private> global3: Struct_4;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: vec3<f32>) -> bool {
    var var_0 = 376f;
    var_0 = -743f;
    var var_1 = !vec3<bool>(any(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), global3.a)), !global3.a, global3.a);
    global2 = array<i32, 23>();
    return any(vec4<bool>(true, global3.a, var_1.x, true)) && ((12330i >> (u_input.d.x % 32u)) == _wgslsmith_mod_i32(u_input.b.x | (i32(-1i) * -30615i), -8058i));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_3) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(arg_3.e.x * -1926f);
    var var_1 = (!func_2(global1.x, arg_0, vec3<f32>(1f, 1f, 1f)) | false) || (arg_2.b.c == arg_2.e.x);
    let var_2 = arg_2;
    var var_3 = arg_3.e;
    let var_4 = ~_wgslsmith_div_vec3_u32(vec3<u32>(global1.x, max(arg_1.a, var_2.d.a), _wgslsmith_mod_u32(arg_3.d.a, 77526u)), arg_3.a) ^ ~(vec3<u32>(var_2.a.x, 0u, 1u) >> (reverseBits(vec3<u32>(u_input.a, 4294967295u, 1u)) % vec3<u32>(32u)));
    return !select(!select(!vec2<bool>(global3.a, false), vec2<bool>(global3.a, true), select(vec2<bool>(global3.a, false), vec2<bool>(global3.a, global3.a), global3.a)), vec2<bool>(false, any(vec2<bool>(true, true))), false);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: Struct_3) -> Struct_4 {
    global2 = array<i32, 23>();
    var var_0 = abs(_wgslsmith_clamp_vec2_u32(global1.yx, u_input.d, select(u_input.d, vec2<u32>(~1u, firstTrailingBit(arg_2.a.x)), true)));
    let var_1 = arg_2.d;
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), -549f));
    let var_3 = Struct_4(!arg_0.x);
    return Struct_4(false);
}

fn func_4(arg_0: Struct_4, arg_1: u32) -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -370f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-645f, 1000f, false)), _wgslsmith_f_op_f32(256f - 384f))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 394f, -1253f, 100f)))))))));
    global1 = ~_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1, 31989u, u_input.a), abs(vec3<u32>(86337u, 23192u, u_input.a))), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, 11822u, 57996u), vec3<u32>(0u, 4294967295u, u_input.c))), abs(abs(vec3<u32>(global1.x, arg_1, u_input.d.x))) & vec3<u32>(global1.x >> (117398u % 32u), global1.x, ~29552u));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(373f, _wgslsmith_f_op_f32(var_1.x + var_0.x), _wgslsmith_f_op_f32(-2109f + var_1.x), var_1.x) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, var_0.x, 438f, var_0.x), vec4<f32>(var_0.x, 252f, var_1.x, 789f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 916f, 260f, var_0.x)))))));
    let var_2 = var_0.x;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-240f, 857f)) + 2083f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-816f * _wgslsmith_f_op_f32(-174f + 1272f))), true)));
    let var_1 = func_4(func_3(select(!vec2<bool>(false, global3.a), !(!vec2<bool>(false, global3.a)), func_1(~vec4<u32>(global1.x, u_input.a, global1.x, 1u), Struct_2(u_input.a, var_0, -1348f), Struct_3(vec3<u32>(global1.x, u_input.d.x, 16236u), Struct_2(global1.x, var_0, 140f), vec4<i32>(u_input.b.x, global2[_wgslsmith_index_u32(global1.x, 23u)], 0i, global2[_wgslsmith_index_u32(37856u, 23u)]), Struct_2(58415u, 187f, var_0), vec2<f32>(161f, -630f)), Struct_3(vec3<u32>(14881u, u_input.a, global1.x), Struct_2(1u, var_0, var_0), vec4<i32>(65246i, u_input.b.x, global2[_wgslsmith_index_u32(u_input.d.x, 23u)], u_input.b.x), Struct_2(1u, var_0, var_0), vec2<f32>(627f, var_0)))), max(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, global2[_wgslsmith_index_u32(u_input.d.x, 23u)], -1i, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, global2[_wgslsmith_index_u32(global1.x, 23u)], -36365i), vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 23u)], global2[_wgslsmith_index_u32(global1.x, 23u)], u_input.b.x, 0i))), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -1i, 68486i, 1i), vec4<i32>(global2[_wgslsmith_index_u32(23909u, 23u)], 2664i, -15103i, u_input.b.x)) << (~vec4<u32>(global1.x, u_input.c, 101816u, 51232u) % vec4<u32>(32u))), Struct_3(_wgslsmith_clamp_vec3_u32(~vec3<u32>(7252u, global1.x, 4306u), vec3<u32>(global1.x, global1.x, u_input.d.x), ~vec3<u32>(641u, 39398u, u_input.d.x)), Struct_2(select(u_input.c, 0u, true), -182f, 918f), vec4<i32>(-23844i, global2[_wgslsmith_index_u32(global1.x, 23u)], abs(-2572i), ~(-12491i)), Struct_2(abs(global1.x), var_0, var_0), vec2<f32>(-353f, _wgslsmith_f_op_f32(round(-300f))))), u_input.a);
    global2 = array<i32, 23>();
    var var_2 = u_input.b.x;
    var var_3 = Struct_2(1u >> (global1.x % 32u), var_0, 1830f);
    let var_4 = select(vec2<bool>(true, !(!global3.a) != any(vec3<bool>(global3.a, global3.a, false))), vec2<bool>(global3.a, false), func_3(vec2<bool>(global3.a, !global3.a), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -3889i), Struct_3(reverseBits(~vec3<u32>(4294967295u, 18974u, 81481u)), Struct_2(869u, 1251f, 1000f), min(abs(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 23u)], u_input.b.x, 2147483647i, -13135i)), vec4<i32>(1i, 3706i, -9815i, global2[_wgslsmith_index_u32(30720u, 23u)])), Struct_2(select(0u, var_1, false), _wgslsmith_f_op_f32(f32(-1f) * -915f), _wgslsmith_f_op_f32(sign(-582f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -1345f))))).a);
    global0 = array<vec3<i32>, 30>();
    global2 = array<i32, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(global1.x, ~var_3.a, global1.x, global1.x) >> (_wgslsmith_div_vec4_u32(vec4<u32>(var_3.a, var_3.a, max(global1.x, global1.x), 1u), ~(~vec4<u32>(var_1, u_input.d.x, global1.x, u_input.d.x))) % vec4<u32>(32u)));
}

