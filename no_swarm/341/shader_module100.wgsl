struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<u32>) -> vec3<f32> {
    var var_0 = vec4<f32>(-367f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -787f)), 100f, -1085f);
    var_0 = vec4<f32>(-453f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) - 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x)))) - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-arg_0.x));
    let var_1 = u_input.c;
    var var_2 = countOneBits(11833u);
    var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1031f, -811f, 721f, -282f))))))))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, arg_0.x, 1209f))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(arg_0 + vec3<f32>(arg_0.x, -403f, var_0.x)), _wgslsmith_f_op_vec3_f32(floor(var_0.zzy)))))));
}

fn func_2() -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec3<f32>(1324f, 843f, -238f), vec2<u32>(u_input.d, u_input.d))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1608f, -299f, -644f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-779f, 1460f, -1245f)))));
    let var_1 = Struct_2(Struct_1(-u_input.c.zzx), Struct_1(-vec3<i32>(23945i, u_input.c.x | u_input.b.x, 0i ^ u_input.b.x)));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-443f, 809f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec3_f32(func_3(vec3<f32>(-691f, 1000f, 1337f), vec2<u32>(u_input.d, u_input.d))).x)), 1000f, var_0.x), vec3<f32>(-626f, var_0.x, 578f)));
    var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(trunc(318f)), -1204f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(579f, var_0.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(vec3<f32>(1122f, var_0.x, 1447f), vec2<u32>(u_input.d, u_input.d))).x - _wgslsmith_f_op_f32(-var_0.x))))));
    var var_2 = true;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x));
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.d;
    var var_1 = _wgslsmith_f_op_vec2_f32(func_2());
    var var_2 = u_input.c.xzz;
    var var_3 = Struct_2(Struct_1(~u_input.b.xxx), Struct_1(u_input.c.zyy & _wgslsmith_add_vec3_i32(-u_input.c.wyw, vec3<i32>(u_input.b.x, var_2.x, u_input.b.x))));
    var var_4 = Struct_2(var_3.a, var_3.b);
    return var_4.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var_0 = u_input.c;
    var var_1 = func_1();
    var_0 = _wgslsmith_sub_vec4_i32(u_input.b, ~firstTrailingBit(vec4<i32>(u_input.b.x, -1i, _wgslsmith_clamp_i32(u_input.b.x, 0i, -70868i), _wgslsmith_mult_i32(u_input.c.x, 8091i))));
    let var_2 = Struct_1(vec3<i32>(var_0.x, 22933i, u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), select(-vec2<i32>(43197i, 1i), var_1.a.xz, select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)))) << (select(vec2<u32>(u_input.d, max(u_input.d, 8219u)), vec2<u32>(u_input.d, 32554u) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, 0u), vec2<u32>(77581u, 44413u), vec2<u32>(u_input.d, u_input.d)), true) % vec2<u32>(32u)));
}

