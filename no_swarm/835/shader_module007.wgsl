struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: bool,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(-28914i, 1i, 17183i, 1i), vec4<i32>(4602i, -1i, -23565i, -1i), vec4<i32>(-7637i, 1i, 1i, 2147483647i), vec4<i32>(2147483647i, -13174i, -9218i, -49696i), vec4<i32>(-30475i, -14826i, 2147483647i, 33200i), vec4<i32>(0i, -1i, 2147483647i, 0i), vec4<i32>(i32(-2147483648), 2147483647i, -1i, 1i), vec4<i32>(-58166i, -40497i, i32(-2147483648), 54113i), vec4<i32>(0i, 0i, 2147483647i, 2147483647i), vec4<i32>(-11259i, 2147483647i, -14939i, i32(-2147483648)), vec4<i32>(5926i, 5219i, -1i, 48112i), vec4<i32>(-1i, 14487i, 13411i, -24705i), vec4<i32>(77028i, 27102i, 0i, -1i), vec4<i32>(0i, 1i, -1781i, i32(-2147483648)), vec4<i32>(-19748i, 15467i, -41897i, -22586i), vec4<i32>(-26796i, -70173i, i32(-2147483648), -1i), vec4<i32>(-18966i, -61605i, -1342i, i32(-2147483648)), vec4<i32>(0i, 69995i, i32(-2147483648), 2147483647i), vec4<i32>(-1i, 23747i, 18653i, i32(-2147483648)), vec4<i32>(-15900i, 2147483647i, -1i, 48454i), vec4<i32>(-19490i, -1i, 2147483647i, -12377i));

var<private> global2: vec4<bool>;

var<private> global3: array<Struct_2, 10>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    global3 = array<Struct_2, 10>();
    global1 = array<vec4<i32>, 21>();
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(946f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -621f), -249f)), _wgslsmith_f_op_f32(ceil(1169f))), vec3<f32>(1f, 1f, 1f));
    let var_1 = var_0;
    let var_2 = firstTrailingBit(min(vec2<i32>(~(-2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -16490i), ~vec2<i32>(0i, 0i))), vec2<i32>(_wgslsmith_mod_i32(2147483647i << (arg_0.x % 32u), select(1i, -35857i, true)), -2986i)));
    return select(arg_0.x, firstTrailingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(arg_0.x, arg_0.x, 0u, 4294967295u), vec4<u32>(1u, 0u, 1u, arg_0.x), global2.x), ~vec4<u32>(4294967295u, 44215u, u_input.a, u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 18948u, 4294967295u), vec4<u32>(arg_0.x, 1u, 4294967295u, u_input.a))), ~reverseBits(vec4<u32>(4294967295u, u_input.a, 0u, 4294967295u)))), false || !(!any(vec4<bool>(false, true, global2.x, false))));
}

fn func_2() -> u32 {
    global2 = vec4<bool>((global2.x & !global2.x) | !(!(!global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(557f)), 1399f))) > _wgslsmith_f_op_f32(-1f), u_input.a > u_input.a, false);
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(ceil(-194f)));
    let var_1 = _wgslsmith_dot_vec2_u32(~vec2<u32>(abs(_wgslsmith_mult_u32(4294967295u, u_input.a)), u_input.a), vec2<u32>(u_input.a, u_input.a));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-105f + var_0.x)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1005f) - _wgslsmith_f_op_f32(839f - -1639f)))));
    let var_3 = true;
    return func_3(~(~vec3<u32>(15374u, u_input.a, u_input.a) & _wgslsmith_sub_vec3_u32(vec3<u32>(23626u, u_input.a, 0u), vec3<u32>(var_1, var_1, 25097u))) & ~(vec3<u32>(0u, var_1, 1u) << (~vec3<u32>(u_input.a, 2281u, var_1) % vec3<u32>(32u))));
}

fn func_1(arg_0: bool) -> Struct_2 {
    global1 = array<vec4<i32>, 21>();
    let var_0 = select(true, global2.x, arg_0) || all(vec2<bool>(any(vec2<bool>(false, arg_0)), true));
    return global3[_wgslsmith_index_u32((_wgslsmith_add_u32(~938u, select(u_input.a, 30503u, all(vec4<bool>(arg_0, true, true, false)))) & func_2()) ^ 79756u, 10u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1((global2.x && false) & global2.x);
    let var_1 = global3[_wgslsmith_index_u32(24905u, 10u)];
    global3 = array<Struct_2, 10>();
    let var_2 = ~(i32(-1i) * -1i);
    let var_3 = firstTrailingBit(vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_div_i32(var_2, var_2), var_2, _wgslsmith_sub_i32(var_2, var_2)));
    var var_4 = _wgslsmith_div_vec2_u32(vec2<u32>(~0u, 14619u), vec2<u32>(1u, ~(countOneBits(4294967295u) ^ var_1.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(14196u, _wgslsmith_mod_u32(select(0u, var_1.a.x, true), func_2()) | 74203u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1202f, -276f, -612f)))))), -801f);
}

