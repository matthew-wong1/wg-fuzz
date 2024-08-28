struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<u32, 22>;

var<private> global2: u32;

var<private> global3: array<u32, 16> = array<u32, 16>(21231u, 0u, 0u, 4489u, 0u, 0u, 1537u, 7310u, 25448u, 37942u, 31293u, 0u, 1u, 4294967295u, 85356u, 15106u);

var<private> global4: i32 = 0i;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1) -> vec3<i32> {
    global2 = 0u << (_wgslsmith_mult_u32(reverseBits(~u_input.a.x), _wgslsmith_div_u32(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(arg_0.x, 16u)] ^ global3[_wgslsmith_index_u32(0u, 16u)], ~26254u), 15921u)) % 32u);
    var var_0 = select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>((arg_2.a.x | 1i) > _wgslsmith_div_i32(global0.x, global0.x), true, all(vec2<bool>(true, true))), all(vec2<bool>(true, true))), select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true)), vec3<bool>(any(vec3<bool>(false, false, true)), true, true), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)), !any(vec2<bool>(true, true)));
    var var_1 = reverseBits(reverseBits(global0.zzx & arg_2.a.xxw));
    let var_2 = var_0.x;
    let var_3 = select(!select(vec3<bool>(false, true, true), vec3<bool>(!var_0.x, true, var_0.x), any(var_0.xz)), !(!vec3<bool>(any(vec3<bool>(var_0.x, var_0.x, var_0.x)), !var_0.x, var_0.x)), any(select(vec3<bool>(false, var_1.x > arg_1, arg_0.x != global1[_wgslsmith_index_u32(24448u, 22u)]), select(vec3<bool>(true, true, true), !vec3<bool>(true, var_0.x, true), select(vec3<bool>(false, var_0.x, false), vec3<bool>(true, true, var_0.x), vec3<bool>(false, var_0.x, var_0.x))), all(vec3<bool>(true, var_0.x, false)))));
    return global0.zww;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> u32 {
    var var_0 = Struct_1(arg_0.a, 1u);
    let var_1 = arg_0;
    let var_2 = ~_wgslsmith_mult_vec3_i32(func_3(_wgslsmith_mod_vec3_u32(u_input.a.yxw, vec3<u32>(var_0.b, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.b, 16u)], 22u)], 22u)])), _wgslsmith_mult_i32(i32(-1i) * -4562i, _wgslsmith_sub_i32(arg_1.x, -18176i)), Struct_1(vec4<i32>(arg_1.x, -23932i, var_0.a.x, 0i), var_0.b)), vec3<i32>(i32(-1i) * -16963i, _wgslsmith_sub_i32(-49543i, ~var_0.a.x), min(arg_0.a.x, func_3(vec3<u32>(global3[_wgslsmith_index_u32(7416u, 16u)], 51800u, 0u), -2147483647i, Struct_1(var_1.a, 1u)).x)));
    return arg_0.b;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec2<bool>(!(!(abs(global0.x) >= arg_0.a.x)), all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, false, true))));
    var_0 = !vec2<bool>(var_0.x, !var_0.x);
    var var_1 = global0.x;
    global3 = array<u32, 16>();
    let var_2 = ~(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(func_2(arg_0, global0.xw), 16u)], _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], global3[_wgslsmith_index_u32(0u, 16u)])), ~abs(global3[_wgslsmith_index_u32(u_input.a.x, 16u)])));
    return Struct_1(firstTrailingBit(arg_0.a), _wgslsmith_add_u32(4294967295u, global3[_wgslsmith_index_u32(~0u, 16u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-_wgslsmith_div_vec4_i32(~vec4<i32>(2147483647i, global0.x, global0.x, global0.x), ~vec4<i32>(global0.x, 60952i, global0.x, global0.x) << (vec4<u32>(6316u, u_input.a.x, 1u, u_input.a.x) % vec4<u32>(32u))), _wgslsmith_sub_u32(39429u, u_input.a.x));
    var var_1 = ~countOneBits(vec2<u32>(~1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~75441u, 16u)], 16u)]));
    var var_2 = reverseBits(~(~(~var_1.x)) << (u_input.a.x % 32u));
    let var_3 = Struct_1(vec4<i32>(2147483647i, 14557i, -1i, var_0.a.x), 1u);
    var_0 = var_3;
    var var_4 = ~u_input.a.zxw;
    var_2 = 4294967295u;
    var var_5 = func_1(var_3);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(var_5.a, -_wgslsmith_add_vec4_i32(countOneBits(var_3.a), vec4<i32>(-2979i, -11927i, 39413i, 40876i))));
}

