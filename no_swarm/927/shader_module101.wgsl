struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: u32,
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

var<private> global0: f32;

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(i32(-2147483648), 204f), Struct_1(7348i, -663f), Struct_1(16119i, -565f), Struct_1(-94941i, -1202f), Struct_1(2147483647i, -1542f), Struct_1(i32(-2147483648), -942f), Struct_1(36790i, 303f), Struct_1(-36565i, 2724f), Struct_1(-3138i, -1960f), Struct_1(12441i, 153f), Struct_1(0i, -771f), Struct_1(-7267i, -1348f), Struct_1(2147483647i, -1709f), Struct_1(2147483647i, 1000f), Struct_1(2147483647i, 559f), Struct_1(-17122i, 598f), Struct_1(i32(-2147483648), 965f), Struct_1(0i, -242f), Struct_1(-36132i, -144f), Struct_1(-1i, 498f), Struct_1(2147483647i, -1128f), Struct_1(-140422i, -484f), Struct_1(2147483647i, 942f), Struct_1(0i, -691f), Struct_1(-32376i, 367f), Struct_1(16262i, -1019f), Struct_1(-1i, -1419f), Struct_1(0i, 806f), Struct_1(5148i, 1254f), Struct_1(-13670i, 246f));

var<private> global2: Struct_1;

var<private> global3: bool = false;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(min(~(~(~1u)), min(~u_input.b.x, ~(_wgslsmith_dot_vec3_u32(u_input.b.zyy, vec3<u32>(0u, u_input.e, u_input.e)) ^ u_input.b.x))), 30u)];
    let var_1 = u_input.b.x;
    global1 = array<Struct_1, 30>();
    var_0 = Struct_1(~_wgslsmith_mod_i32(reverseBits(select(var_0.a, global2.a, true)), 14419i), var_0.b);
    let var_2 = var_1;
    return countOneBits(var_2);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-648f, global2.b, _wgslsmith_f_op_f32(abs(193f))));
    var var_1 = ~vec4<u32>(firstTrailingBit(~(~0u)), 97077u, ~2964u, _wgslsmith_mult_u32(u_input.b.x, func_3()));
    let var_2 = Struct_1(reverseBits(_wgslsmith_dot_vec4_i32(~(-vec4<i32>(1i, -26685i, global2.a, -1i)), vec4<i32>(firstLeadingBit(u_input.c), 1i, reverseBits(global2.a), global2.a))), var_0.x);
    global0 = _wgslsmith_f_op_f32(158f * -278f);
    var var_3 = false;
    return global1[_wgslsmith_index_u32(~func_3(), 30u)];
}

fn func_1() -> vec2<f32> {
    let var_0 = global2.b;
    var var_1 = func_2();
    var var_2 = firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(25029i, -22181i, var_1.a), ~abs(vec3<i32>(1i, 50553i, 1i))), 1i, _wgslsmith_mult_i32(3580i, -53084i), (i32(-1i) * -57707i) | _wgslsmith_add_i32(u_input.a, u_input.c)));
    let var_3 = Struct_1(-var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) * _wgslsmith_f_op_f32(sign(-357f))) * 118f)));
    var_2 = vec4<i32>(_wgslsmith_dot_vec3_i32(~var_2.zxz, vec3<i32>(-u_input.c, -var_2.x & u_input.c, _wgslsmith_sub_i32(var_1.a, u_input.d) >> (_wgslsmith_mod_u32(u_input.e, 0u) % 32u))), var_3.a, firstTrailingBit(firstTrailingBit(var_1.a)), -var_3.a);
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(668f, var_3.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-524f, var_1.b) * _wgslsmith_div_vec2_f32(vec2<f32>(153f, var_3.b), vec2<f32>(-698f, -1000f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b)), global2.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1())))));
    global3 = !any(!vec4<bool>(true, 124243u >= u_input.e, false, any(vec4<bool>(true, false, false, false))));
    global1 = array<Struct_1, 30>();
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + global2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(exp2(global2.b)))))));
    var var_2 = func_2();
    global3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.b.xzz, u_input.b.xwy), u_input.b.x, abs(u_input.b.x), max(0u, 1u)), ~vec4<u32>(abs(44944u), abs(5406u), ~u_input.b.x, max(u_input.e, 20060u)), _wgslsmith_add_vec4_u32(vec4<u32>(9679u & u_input.b.x, ~40177u, u_input.e, u_input.b.x), max(firstLeadingBit(u_input.b), u_input.b))));
}

