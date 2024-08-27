struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: u32,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec4<u32> = vec4<u32>(15262u, 1u, 4294967295u, 4294967295u);

var<private> global2: bool = false;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1211f, 461f, 2397f, -240f))))), _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, select(27719i, 2147483647i, false), firstLeadingBit(-25218i), 2147483647i)), _wgslsmith_sub_vec4_i32(firstTrailingBit(abs(vec4<i32>(14831i, 1i, -70404i, -1i))), vec4<i32>(1i, 1i, 1i, 1i))), ~43477u);
    var var_1 = (global1.zz & global1.ww) ^ u_input.c.xx;
    let var_2 = vec3<u32>(var_0.c, abs(var_0.c << (firstLeadingBit(25029u) % 32u)), global1.x);
    global0 = !(_wgslsmith_add_i32(~var_0.b.x, -2147483647i) < 6978i);
    let var_3 = 4294967295u;
    return 627f;
}

fn func_2(arg_0: Struct_3) -> f32 {
    let var_0 = Struct_1(vec3<i32>(-arg_0.b.x, arg_0.b.x, ~arg_0.b.x), arg_0.b.x, _wgslsmith_dot_vec3_i32(~arg_0.b.xzx, vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(arg_0.b, arg_0.b), firstLeadingBit(vec4<i32>(-13436i, arg_0.b.x, arg_0.b.x, 77322i))), arg_0.b.x, reverseBits(0i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(-arg_0.a.a.x)));
    global1 = vec4<u32>(arg_0.c, _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(1u, u_input.b)), firstTrailingBit(global1.yw)), u_input.b, global1.x) ^ ~(u_input.c | select(vec4<u32>(0u, 66074u, arg_0.c, u_input.b), ~u_input.c, vec4<bool>(true, true, true, true)));
    let var_1 = vec2<bool>(!select(!any(vec4<bool>(true, true, false, false)), _wgslsmith_dot_vec4_i32(arg_0.b, arg_0.b) == _wgslsmith_mult_i32(arg_0.b.x, arg_0.b.x), true), any(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), true))));
    let var_2 = false;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1099f, -1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -752f) * arg_0.a.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1221f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1112f - arg_0.a.a.x) + _wgslsmith_f_op_f32(-arg_0.a.a.x))))))));
}

fn func_1(arg_0: i32) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-798f, -1000f, 1974f, 872f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(207f)), _wgslsmith_div_f32(1594f, -1242f), _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(-476f + 622f)) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1134f), _wgslsmith_f_op_f32(-508f + 586f), _wgslsmith_f_op_f32(func_2(Struct_3(Struct_2(vec4<f32>(1000f, 1395f, -732f, 1000f)), vec4<i32>(0i, arg_0, -2147483647i, arg_0), u_input.c.x))), 1000f)))));
    let var_1 = vec3<i32>(arg_0, arg_0, arg_0);
    return StorageBuffer(u_input.a & vec2<u32>(firstTrailingBit(0u & u_input.a.x), ~u_input.b << (u_input.b % 32u)), _wgslsmith_f_op_f32(f32(-1f) * -624f), vec2<f32>(1538f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1345f * var_0.x) - _wgslsmith_f_op_f32(var_0.x - -988f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    global1 = ~u_input.c;
    global1 = u_input.c;
    let var_0 = vec3<bool>(true, true, true);
    let x = u_input.a;
    s_output = func_1(countOneBits(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-802i, 2147483647i, 13651i), vec3<i32>(1i, -1i, 1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(54212i, -1i, 0i), vec3<i32>(-46194i, 0i, -4494i), vec3<i32>(-13182i, -8606i, -1i))) >> (u_input.b % 32u)));
}

