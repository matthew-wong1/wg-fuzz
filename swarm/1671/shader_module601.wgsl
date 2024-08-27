struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 18900i;

var<private> global1: vec3<u32>;

var<private> global2: array<u32, 11> = array<u32, 11>(1u, 49983u, 1u, 61958u, 4294967295u, 4294967295u, 21284u, 10729u, 0u, 54802u, 4294967295u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> Struct_2 {
    var var_0 = global1.x;
    let var_1 = Struct_2(0u);
    let var_2 = vec4<u32>(0u, 15445u, 1u, ~(_wgslsmith_div_u32(~11624u, 47576u) & select(86754u, 12629u, false)));
    var var_3 = u_input.b;
    var var_4 = vec2<i32>(_wgslsmith_mod_i32(-u_input.b, _wgslsmith_add_i32(countOneBits(u_input.b >> (1u % 32u)), 23748i)), _wgslsmith_mult_i32(u_input.b, _wgslsmith_mod_i32(max(u_input.b, min(-15065i, u_input.b)), -u_input.b)));
    return var_1;
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    global0 = u_input.b;
    let var_0 = _wgslsmith_div_u32(u_input.a.x, reverseBits(firstLeadingBit(~_wgslsmith_mult_u32(1u, arg_2.a))));
    global0 = 1i << (_wgslsmith_clamp_u32(var_0 | u_input.a.x, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(5472u, 49490u), vec2<u32>(1311u, global1.x))), max(42761u, ~0u) & ~arg_3.a) % 32u);
    global2 = array<u32, 11>();
    let var_1 = !arg_1.x;
    return Struct_1(~vec2<i32>(i32(-1i) * -23517i, firstTrailingBit(u_input.b)) << (~u_input.a.zz % vec2<u32>(32u)));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: vec3<i32>) -> i32 {
    var var_0 = func_3(1627f, vec4<bool>(true, arg_2.x >= 1i, false, arg_1 | true), func_2(), func_2());
    let var_1 = reverseBits(_wgslsmith_sub_vec4_i32(~firstLeadingBit(vec4<i32>(-33397i, 2147483647i, 1i, var_0.a.x)), -vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), var_0.a), u_input.b, 2364i, -var_0.a.x)));
    let var_2 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(var_1.x, ~2147483647i) << (global2[_wgslsmith_index_u32(4294967295u, 11u)] % 32u), var_0.a.x), ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, arg_2.x, 4089i), vec3<i32>(arg_2.x, arg_2.x, -2147483647i))));
    var var_3 = vec3<u32>(_wgslsmith_div_u32(~0u, u_input.a.x), ~(~96583u), 4294967295u);
    let var_4 = Struct_2(global2[_wgslsmith_index_u32(4294967295u, 11u)]);
    return _wgslsmith_dot_vec2_i32(arg_2.yy, -(~(vec2<i32>(2147483647i, var_0.a.x) << (vec2<u32>(u_input.a.x, 65276u) % vec2<u32>(32u)))) | -max(var_1.xy, _wgslsmith_add_vec2_i32(var_2, vec2<i32>(var_2.x, var_2.x))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_1 {
    global0 = -39731i;
    var var_0 = Struct_2(107107u);
    global1 = countOneBits(u_input.a.zzx) ^ (vec3<u32>(reverseBits(global1.x), 9066u, select(1u, ~0u, true)) | vec3<u32>(_wgslsmith_mod_u32(~0u, global2[_wgslsmith_index_u32(~1u, 11u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, 0u, 1u), u_input.a.yyz) << (_wgslsmith_div_u32(arg_1.a, 17450u) % 32u), 4294967295u));
    let var_1 = func_2();
    global2 = array<u32, 11>();
    return Struct_1(vec2<i32>(arg_2.x, abs(arg_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(4294967295u == global1.x, false, any(vec4<bool>(true, select(true, true, false), true, 28909u != u_input.a.x)));
    var var_1 = func_4(Struct_2(0u), Struct_2(~max(_wgslsmith_sub_u32(u_input.a.x, 46830u), _wgslsmith_dot_vec3_u32(u_input.a.zyx, vec3<u32>(1u, 4294967295u, u_input.a.x)))), _wgslsmith_mod_vec2_i32(vec2<i32>(firstTrailingBit(func_1(Struct_2(0u), var_0.x, vec3<i32>(0i, -1i, u_input.b))), -9852i), _wgslsmith_add_vec2_i32(firstTrailingBit(reverseBits(vec2<i32>(u_input.b, 1i))), ~(vec2<i32>(24617i, -2147483647i) | vec2<i32>(u_input.b, u_input.b)))));
    var_1 = Struct_1(-(vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(var_1.a, vec2<i32>(44215i, 1i), vec2<i32>(u_input.b, 2147483647i))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(min(-1491f, -1601f)))), 1f)))));
    global1 = vec3<u32>(global1.x | (global1.x >> (~(~global1.x) % 32u)), _wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global1.x, 5022u, u_input.a.x)), abs(vec3<u32>(global1.x, global1.x, u_input.a.x))), 4294967295u), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(40620u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5724u, 11u)], 11u)], 11u)], global1.x), reverseBits(firstTrailingBit(vec3<u32>(global1.x, 25273u, global2[_wgslsmith_index_u32(global1.x, 11u)])))), abs(_wgslsmith_clamp_vec3_u32(u_input.a.wyy, abs(u_input.a.xyx), u_input.a.zwx))));
    let x = u_input.a;
    s_output = StorageBuffer(478f);
}

