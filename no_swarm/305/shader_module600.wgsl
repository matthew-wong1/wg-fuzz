struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: f32,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32;

var<private> global2: array<vec2<u32>, 12>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec4<u32> {
    var var_0 = ~(-vec2<i32>(min(2147483647i, 6507i), _wgslsmith_sub_i32(0i, -25377i))) & ~firstTrailingBit(vec2<i32>(-1i, max(2393i, -1i)));
    var_0 = abs(~vec2<i32>(~var_0.x, i32(-1i) * -var_0.x));
    var_0 = vec2<i32>(10649i, countOneBits(0i) << (0u % 32u));
    let var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(~25561u << ((u_input.a.x >> (1u % 32u)) % 32u), ~min(91100u, u_input.a.x), ~(~6172u), abs(0u << (u_input.a.x % 32u))), vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, firstLeadingBit(u_input.a.x)), u_input.a.x, select(u_input.a.x << (u_input.a.x % 32u), ~u_input.a.x, all(vec3<bool>(false, true, false))), _wgslsmith_clamp_u32(6776u, 1u, 4294967295u) ^ 1u)) | vec4<u32>(53932u, 3055u, u_input.a.x, ~_wgslsmith_add_u32(0u, 4294967295u));
    var var_2 = u_input.a;
    return var_1;
}

fn func_2(arg_0: u32, arg_1: bool) -> i32 {
    var var_0 = select(~(reverseBits(vec4<i32>(1i, 1i, 1i, 1i)) << (_wgslsmith_mult_vec4_u32(func_3(), vec4<u32>(79183u, 10075u, 28941u, 22524u)) % vec4<u32>(32u))), vec4<i32>(1i, 1i, 1i, 1i), vec4<bool>(arg_1, !arg_1, arg_1, arg_1));
    global2 = array<vec2<u32>, 12>();
    var_0 = ~(-vec4<i32>(var_0.x, ~var_0.x, -var_0.x, ~var_0.x) << (_wgslsmith_div_vec4_u32(max(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, arg_0, arg_0, 0u), vec4<u32>(0u, 4294967295u, 4294967295u, 2341u)), vec4<u32>(u_input.a.x, 4294967295u, 0u, arg_0) >> (vec4<u32>(0u, 4294967295u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), (vec4<u32>(u_input.a.x, arg_0, arg_0, 0u) >> (vec4<u32>(1u, 1u, 4294967295u, arg_0) % vec4<u32>(32u))) & ~vec4<u32>(u_input.a.x, arg_0, arg_0, 1u)) % vec4<u32>(32u)));
    let var_1 = vec2<i32>(var_0.x, -_wgslsmith_sub_i32(var_0.x, _wgslsmith_mult_i32(var_0.x, ~var_0.x)));
    let var_2 = select(select(vec3<bool>(true, arg_1, any(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), arg_1))), select(!vec3<bool>(false, true, arg_1), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(false, true, arg_1), 58546u >= arg_0), arg_1), any(vec2<bool>(true, !arg_1))), !select(select(!vec3<bool>(arg_1, false, arg_1), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(true, true, true), vec3<bool>(arg_1, true, arg_1)), select(vec3<bool>(arg_1, true, true), vec3<bool>(false, false, arg_1), vec3<bool>(false, false, arg_1))), !(!vec3<bool>(arg_1, arg_1, arg_1)), !all(vec4<bool>(arg_1, true, arg_1, arg_1))), !vec3<bool>(!all(vec2<bool>(false, arg_1)), !all(vec2<bool>(arg_1, false)), true));
    return var_0.x;
}

fn func_1() -> Struct_1 {
    global1 = ~_wgslsmith_mult_u32(~abs(u_input.a.x), ~21727u);
    var var_0 = !(false | (_wgslsmith_mult_i32(countOneBits(1i), ~51076i) < func_2(u_input.a.x, true)));
    var_0 = true;
    global0 = 2147483647i;
    var_0 = !all(select(vec2<bool>(any(vec2<bool>(false, true)), any(vec4<bool>(false, false, false, false))), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))));
    return Struct_1(vec4<bool>(select(false, true | any(vec2<bool>(true, true)), false), false, any(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true))), true), !select(any(vec4<bool>(true, true, false, false)), true, false), vec4<bool>(!any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), abs(u_input.a.x | 4294967295u) != u_input.a.x, true, true), vec2<u32>(u_input.a.x, _wgslsmith_div_u32(firstTrailingBit(1u), ~u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<u32>, 12>();
    let var_0 = 1i;
    var var_1 = 1u;
    var var_2 = func_1();
    var_1 = var_2.d.x;
    let var_3 = !(!(!(!select(var_2.a.ywy, var_2.a.zzw, false))));
    let var_4 = !select(var_2.a, func_1().a, false | var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(~_wgslsmith_sub_vec2_u32(u_input.a, var_2.d), ~(~global2[_wgslsmith_index_u32(var_2.d.x, 12u)])), ~global2[_wgslsmith_index_u32(firstLeadingBit(12861u), 12u)]));
}

