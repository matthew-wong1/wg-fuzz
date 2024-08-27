struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
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

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-1207f, -747f, -314f), vec2<f32>(-1206f, 340f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = Struct_1(arg_3.a, arg_1.a.xz);
    var var_1 = _wgslsmith_clamp_u32(max(~(~(~u_input.a.x)), u_input.a.x), 1u, _wgslsmith_sub_u32(reverseBits(_wgslsmith_mult_u32(0u, u_input.a.x)), 1054u));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(arg_3.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-679f, -496f, -1722f)))), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.a.zy * arg_3.a.zy))) - _wgslsmith_f_op_vec2_f32(-arg_0.a.xy)));
    return arg_2;
}

fn func_2() -> vec2<f32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)) * global0.a.x) * _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(trunc(global0.b.x)));
    let var_1 = max(countOneBits(func_3(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1556f, var_0.x, 620f) - global0.a), vec2<f32>(-1198f, -750f)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -164f, global0.b.x)), _wgslsmith_f_op_vec2_f32(trunc(var_0.zz))), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(16317i, -23553i), vec2<i32>(2147483647i, 30122i)), ~vec2<i32>(0i, 2147483647i), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 56613i), vec2<i32>(2147483647i, -257i))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1094f, 475f, 811f)), global0.a.yx))), ~(vec2<i32>(-398i, -6962i) >> ((u_input.a.xx ^ u_input.a.xz) % vec2<u32>(32u))));
    var var_2 = -51226i;
    var var_3 = Struct_1(var_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, global0.b.x))))))));
    let var_4 = Struct_1(vec3<f32>(1136f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x * 901f) + _wgslsmith_f_op_f32(step(global0.a.x, -665f)))), -1208f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.a.x * var_3.b.x), 1226f) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_3.a.yz)))))));
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_4.b.x, -1586f))) - _wgslsmith_f_op_f32(sign(2041f))), _wgslsmith_f_op_f32(-130f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.a.x, var_0.x)) * _wgslsmith_f_op_f32(abs(-1372f)))));
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_1 {
    let var_0 = true;
    let var_1 = ~(~114677u);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global0.a, vec3<f32>(1847f, -444f, -1014f)))))))), _wgslsmith_f_op_vec2_f32(func_2()));
    global0 = var_2;
    let var_3 = var_2;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(-global0.b.x);
    var var_2 = var_1;
    let var_3 = vec4<i32>(43057i, abs(min(_wgslsmith_div_i32(-20937i, _wgslsmith_sub_i32(27037i, -22227i)), -2147483647i << (_wgslsmith_clamp_u32(0u, 4294967295u, 7066u) % 32u))), i32(-1i) * -17360i, 0i);
    var var_4 = _wgslsmith_f_op_f32(-1480f + _wgslsmith_f_op_f32(global0.a.x + 262f));
    let var_5 = -19574i;
    let var_6 = func_1(var_1, -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(33505u, u_input.a.x, u_input.a.x, 0u)), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), ~vec4<u32>(0u, var_0, 4294967295u, var_0)), vec4<u32>(46202u, ~4294967295u, ~44679u, 56400u)));
}

