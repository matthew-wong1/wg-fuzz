struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(57307u, 27422u, 4294967295u), vec3<u32>(1u, 48014u, 19955u), vec3<u32>(1u, 1u, 14893u), vec3<u32>(44798u, 5630u, 1u), vec3<u32>(1u, 45666u, 22750u));

var<private> global2: f32 = -933f;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: vec4<f32>) -> vec3<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(574f, -540f, -257f) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.x, 228f, 505f)))) * vec3<f32>(arg_1.x, arg_1.x, _wgslsmith_f_op_f32(arg_1.x + 994f)))), Struct_1(arg_1), global0.x);
    let var_1 = -134f <= _wgslsmith_f_op_f32(trunc(-1125f));
    var var_2 = var_0.b;
    var var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(abs(-1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(round(-394f)), arg_1.x));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-802f)), _wgslsmith_f_op_f32(var_3.a.x + 1320f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.x * arg_1.x) + -800f)) - 1392f), var_3.a.x, _wgslsmith_f_op_f32(-279f - var_3.a.x));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<u32>) -> i32 {
    var var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.b.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_1.b.a + arg_1.b.a), vec4<f32>(arg_2.b.a.x, -1000f, 186f, arg_1.a.x), true)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, -685f, arg_1.b.a.x, 1695f)) * arg_1.b.a))));
    var var_1 = -1872f;
    let var_2 = _wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(~arg_3.x >> (~arg_3.x % 32u), u_input.d.x >> (arg_3.x % 32u), arg_3.x)) >= select(1u, countOneBits(arg_0.x ^ (1u >> (u_input.b % 32u))), _wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c, -38143i, arg_2.c, -1i), vec4<i32>(u_input.c, 37888i, arg_2.c, arg_2.c)), reverseBits(-1i)) < abs(-arg_1.c));
    var var_3 = 6333u;
    let var_4 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), 1573f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_0.a.x, -426f)))), _wgslsmith_f_op_f32(floor(arg_2.a.x)))));
    return -44224i;
}

fn func_1() -> Struct_2 {
    global0 = _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -7168i, u_input.c), vec3<i32>(u_input.a, -1i, -(global0.x | global0.x)));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-377f, 515f, -1720f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(global0.x, vec4<f32>(373f, -418f, -855f, -1000f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1485f, -1132f, -3471f), vec3<f32>(-1000f, -1248f, -564f))))))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1038f, -960f, 256f, 1258f), vec4<f32>(1254f, 1470f, -365f, -1000f), false))))), ~func_3((vec3<u32>(u_input.b, u_input.d.x, 6924u) >> (global1[_wgslsmith_index_u32(0u, 5u)] % vec3<u32>(32u))) & ~u_input.d.zyx, Struct_2(vec3<f32>(-177f, -143f, -1000f), Struct_1(vec4<f32>(-1046f, -721f, -400f, 854f)), -u_input.c), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-513f, -1211f, -886f)), Struct_1(vec4<f32>(454f, -671f, -398f, 828f)), 61110i ^ u_input.a), abs(vec3<u32>(u_input.d.x, 25797u, 37078u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 5>();
    var var_0 = !vec4<bool>(true, any(vec3<bool>(true, true, true)) | false, true, -1i == u_input.c);
    var var_1 = func_1();
    var var_2 = global0.xy;
    var_2 = global0.yz;
    var var_3 = func_1();
    var var_4 = func_1();
    let var_5 = var_0.zzw;
    var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_1.b.a.yyy))) - var_3.b.a.yyx), Struct_1(var_4.b.a), var_4.c);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_clamp_vec3_i32(-vec3<i32>(9940i, global0.x, -9033i), _wgslsmith_sub_vec3_i32(vec3<i32>(var_3.c, var_1.c, var_4.c), vec3<i32>(1i, -25929i, 20083i)), vec3<i32>(var_1.c, var_2.x, -1i))), reverseBits(reverseBits(~25421u)), ~(~var_3.c) ^ _wgslsmith_div_i32(countOneBits(firstTrailingBit(global0.x)), u_input.a), global0.zz, -1i);
}

