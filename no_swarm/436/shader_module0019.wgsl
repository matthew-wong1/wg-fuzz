struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<f32>(-1386f, 161f, 315f));

var<private> global1: vec4<u32>;

var<private> global2: Struct_4;

var<private> global3: vec4<i32>;

var<private> global4: array<f32, 30> = array<f32, 30>(1768f, 601f, 709f, -1610f, 1744f, 2455f, 768f, -976f, 347f, 647f, 1541f, -776f, -456f, -583f, 567f, -360f, 1071f, 627f, 1177f, -586f, 531f, -716f, 1918f, 924f, -188f, 1717f, 614f, 795f, 2016f, 302f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_4(global2.a);
    global2 = var_0;
    let var_1 = global2.a;
    global3 = firstTrailingBit(select(global2.a.a, firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(global3.x, global2.a.a.x, 18556i, global2.a.a.x), global2.a.a)), true)) & vec4<i32>(max(_wgslsmith_clamp_i32(var_0.a.a.x, -583i, u_input.a), -u_input.a) & 2147483647i, -62958i, 60877i, min(global3.x, var_0.a.a.x));
    let var_2 = select(-firstTrailingBit(-global2.a.a.xy), var_0.a.a.zw, vec2<bool>(min(firstTrailingBit(global2.a.a.x), global2.a.a.x) < abs(select(global2.a.a.x, -15435i, true)), all(select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)))));
    return ~vec4<u32>(~_wgslsmith_add_u32(40916u, _wgslsmith_sub_u32(global1.x, global1.x)), ~(~(global1.x >> (global1.x % 32u))), global1.x, ~countOneBits(min(global1.x, 1u)));
}

fn func_2() -> Struct_5 {
    global4 = array<f32, 30>();
    global1 = _wgslsmith_mod_vec4_u32(~max(_wgslsmith_mult_vec4_u32(max(vec4<u32>(104674u, global1.x, global1.x, 42940u), vec4<u32>(0u, global1.x, 1u, 34985u)), abs(vec4<u32>(global1.x, global1.x, 54705u, global1.x))), countOneBits(~vec4<u32>(global1.x, global1.x, 1u, global1.x))), ~abs(func_3()));
    let var_0 = vec2<u32>(firstTrailingBit(1u), max(~firstTrailingBit(0u), _wgslsmith_mult_u32(firstLeadingBit(global1.x), 1u & global1.x)));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * global4[_wgslsmith_index_u32(global1.x, 30u)])), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global1.x, 30u)]), global0.a.x)))));
    let var_2 = 5667i;
    return Struct_5(u_input.a, Struct_4(Struct_2(vec4<i32>(1i, _wgslsmith_clamp_i32(global3.x, 0i, global2.a.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, u_input.a), global2.a.a.zzx), global3.x))));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: vec3<i32>) -> i32 {
    var var_0 = func_2();
    let var_1 = ~func_3().zzx;
    let var_2 = true;
    var var_3 = false;
    var var_4 = max(~_wgslsmith_add_i32(min(50896i, _wgslsmith_div_i32(global2.a.a.x, 11911i)), 0i), 16928i);
    return ~_wgslsmith_dot_vec2_i32(vec2<i32>(min(-15928i, min(global2.a.a.x, -2147483647i)), ~(~(-21506i))), arg_2.xy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(u_input.a, _wgslsmith_mod_i32((reverseBits(-5806i) << (_wgslsmith_mult_u32(global1.x, global1.x) % 32u)) << ((global1.x | ~global1.x) % 32u), ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(32324i, -33828i, 21850i, 1i), vec4<i32>(7026i, global3.x, 2147483647i, 1i)))));
    let var_1 = Struct_4(Struct_2(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(0i, -1i, global2.a.a.x, 0i), vec4<i32>(32380i << (global1.x % 32u), select(global2.a.a.x, global3.x, true), func_1(true, vec4<f32>(global0.a.x, global4[_wgslsmith_index_u32(4294967295u, 30u)], global0.a.x, -1021f), vec3<i32>(1i, global2.a.a.x, u_input.a)), u_input.a))));
    let var_2 = var_1;
    global2 = func_2().b;
    global4 = array<f32, 30>();
    let var_3 = global0.a.x;
    var var_4 = global3.yyz;
    var var_5 = Struct_5(_wgslsmith_dot_vec3_i32(global3.zwy, abs(_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a, 25906i, -1i), vec3<i32>(-1i, -31266i, 2147483647i)))), Struct_4(func_2().b.a));
    let x = u_input.a;
    s_output = StorageBuffer(~(-3311i));
}

