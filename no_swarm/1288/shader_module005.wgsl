struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: array<u32, 2>;

var<private> global2: Struct_1;

var<private> global3: f32 = 2490f;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_1(select(!select(!vec4<bool>(true, true, true, global2.a.x), !vec4<bool>(global2.b, true, true, global2.b), all(global2.a.xz)), global2.a, all(!global2.a.yyw) || !(global2.b && false)), global2.b);
    let var_1 = firstTrailingBit(select(u_input.a.yzz, vec3<u32>(41829u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(39770u, 2u)] << (u_input.a.x % 32u), 2u)], min(u_input.a.x, u_input.a.x)) ^ _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 84163u, 4294967295u), vec3<u32>(0u, u_input.a.x, 39715u)), u_input.a.xyw), vec3<bool>(global2.b, var_0.a.x, true)));
    var var_2 = firstTrailingBit(~vec3<u32>(~global1[_wgslsmith_index_u32(abs(1u), 2u)], ~(~15654u), var_1.x));
    let var_3 = vec2<bool>(true, true);
    global1 = array<u32, 2>();
    return _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(~2147483647i, -32909i, 0i, ~(-5018i)), select(-vec4<i32>(2712i, -50456i, -45156i, 17150i), ~vec4<i32>(-2147483647i, 51101i, 57443i, -2147483647i), !var_0.a)), select(firstLeadingBit(vec4<i32>(15116i, -60666i, 31035i, -15727i)), firstTrailingBit(select(vec4<i32>(1i, -2147483647i, 6777i, 1i), vec4<i32>(-2147483647i, 0i, -2147483647i, 25346i), vec4<bool>(true, var_0.a.x, var_3.x, global2.b))), !(!global2.b))), (vec4<i32>(-1i) * -vec4<i32>(-23990i, -2147483647i, 3210i, -13547i)) & vec4<i32>(~_wgslsmith_mult_i32(0i, 28372i), (i32(-1i) * -2147483647i) << (~u_input.a.x % 32u), -1i, max(_wgslsmith_div_i32(69530i, 2147483647i), countOneBits(-2147483647i))));
}

fn func_2() -> vec4<bool> {
    let var_0 = global2.a.x;
    global1 = array<u32, 2>();
    let var_1 = func_3();
    let var_2 = global0[_wgslsmith_index_u32(1u, 20u)];
    let var_3 = global2.a;
    return var_2.a;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(func_2(), global2.b);
    global1 = array<u32, 2>();
    let var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), max(-firstTrailingBit(vec2<i32>(31173i, 41235i)), reverseBits(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, -23522i), vec2<i32>(38004i, 1i)), max(vec2<i32>(0i, 2147483647i), vec2<i32>(12045i, 1i)), firstLeadingBit(vec2<i32>(-1i, 0i))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2372f), _wgslsmith_f_op_f32(floor(-456f))))))));
    global0 = array<Struct_1, 20>();
    return Struct_1(vec4<bool>(global2.a.x | (!var_0.a.x || all(global2.a)), var_0.a.x, true, global2.b), false);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = ~u_input.a.zzz << (vec3<u32>(~reverseBits(29377u), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(u_input.a.x), _wgslsmith_div_u32(1u, u_input.a.x)), 2u)], ~countOneBits(0u)) % vec3<u32>(32u));
    let var_1 = true;
    let var_2 = arg_3;
    let var_3 = _wgslsmith_div_vec4_i32(func_3(), ~(~vec4<i32>(_wgslsmith_mult_i32(arg_2, arg_2), -arg_2, 2147483647i, 37394i)));
    global0 = array<Struct_1, 20>();
    return StorageBuffer(select(vec4<i32>(countOneBits(10305i & arg_2), _wgslsmith_clamp_i32(1i, 0i & var_3.x, -69686i), 17253i, ~var_3.x << (firstTrailingBit(16091u) % 32u)), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(var_3, abs(vec4<i32>(1i, var_3.x, 25805i, arg_2))), (var_3 & var_3) << (~u_input.a % vec4<u32>(32u))), true), _wgslsmith_clamp_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(firstLeadingBit(abs(var_0.x)), 2u)], 54488u), u_input.a.ww, vec2<u32>(0u, u_input.a.x) & (abs(var_0.yz) << ((u_input.a.zz | vec2<u32>(11574u, var_0.x)) % vec2<u32>(32u)))), ~global1[_wgslsmith_index_u32(select(152969u, ~var_0.x, true) | u_input.a.x, 2u)], countOneBits(~(~u_input.a.xw)), _wgslsmith_clamp_i32(arg_2, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(var_3.yw, _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, var_3.x), vec2<i32>(80829i, 2147483647i))), select(vec2<i32>(arg_2, var_3.x), var_3.wy, global2.a.x) & -var_3.xy), -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -8615i << (u_input.a.x % 32u);
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, ~(~_wgslsmith_add_u32(global1[_wgslsmith_index_u32(72494u, 2u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, u_input.a.x), 2u)]))), 20u)];
    global1 = array<u32, 2>();
    var var_1 = global2.a.x;
    global0 = array<Struct_1, 20>();
    let x = u_input.a;
    s_output = func_4(func_1(), global0[_wgslsmith_index_u32(u_input.a.x, 20u)], 0i, global0[_wgslsmith_index_u32(~reverseBits(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(40770u, 0u), 2u)]), 20u)]);
}

