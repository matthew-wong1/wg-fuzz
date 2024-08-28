struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 10>;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(-1i, 2147483647i), vec3<i32>(-1i, -33636i, -30541i), vec3<f32>(142f, 1101f, 117f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: bool) -> i32 {
    global0 = array<vec4<i32>, 10>();
    global1 = Struct_1(-_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(select(vec2<i32>(u_input.a, global1.a.x), vec2<i32>(global1.a.x, global1.b.x), vec2<bool>(false, arg_1)), ~vec2<i32>(-24920i, -2147483647i)), u_input.c.xx, vec2<i32>(~6515i, global1.b.x & u_input.a)), ~_wgslsmith_mult_vec3_i32(~u_input.c, select(vec3<i32>(-1i, u_input.a, u_input.a), -global1.b, vec3<bool>(arg_1, true, true))), global1.c);
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.c * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, 761f, 472f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global1.c)) - vec3<f32>(arg_0, -505f, -1338f))), global1.c), vec3<bool>(false, arg_1, !select(false, true, any(vec4<bool>(arg_1, true, arg_1, arg_1))))));
    let var_1 = abs(~vec4<u32>(_wgslsmith_div_u32(~u_input.b, firstTrailingBit(u_input.b)), abs(1u), firstTrailingBit(~17030u), ~max(4294967295u, 0u)));
    var var_2 = max(1i, -74850i);
    return _wgslsmith_mult_i32(_wgslsmith_div_i32(firstTrailingBit(-global1.b.x >> (u_input.b % 32u)), -40555i), -firstLeadingBit(min(~u_input.c.x, global1.b.x)));
}

fn func_2() -> vec4<bool> {
    global1 = Struct_1(u_input.c.zy, vec3<i32>(global1.a.x, ~func_3(global1.c.x, true), select(_wgslsmith_sub_i32(37171i, global1.b.x), -12004i, false)), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.c.x - -1377f), global1.c.x)), global1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) + _wgslsmith_f_op_f32(sign(-578f))), _wgslsmith_div_f32(global1.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(global1.c.x, -289f)), 681f, false)))));
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(abs(~vec3<u32>(5988u, 73719u, 23978u) << (firstLeadingBit(vec3<u32>(0u, 37736u, u_input.b)) % vec3<u32>(32u)))), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, 61266u, 4294967295u), vec4<u32>(4294967295u, 18541u, u_input.b, 4294967295u))), min(firstTrailingBit(vec3<u32>(u_input.b, 5971u, 0u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 0u, 95814u), vec3<u32>(u_input.b, 33841u, 4294967295u))) << ((firstTrailingBit(vec3<u32>(4294967295u, u_input.b, 4294967295u)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(12388u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b)) % vec3<u32>(32u))) % vec3<u32>(32u)), ~(~vec3<u32>(u_input.b, 9807u, 35037u)))), 10u)];
    var var_1 = select(vec4<bool>((4294967295u << (u_input.b % 32u)) <= ~u_input.b, _wgslsmith_div_f32(972f, global1.c.x) >= _wgslsmith_div_f32(_wgslsmith_div_f32(-706f, 299f), _wgslsmith_f_op_f32(global1.c.x + global1.c.x)), all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1766f - global1.c.x)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 1491f) * _wgslsmith_f_op_f32(-global1.c.x))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(all(vec4<bool>(false, false, false, false)), true, false, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true)), true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, ~u_input.b == reverseBits(u_input.b), false), false));
    global1 = Struct_1(u_input.c.zz, max(vec3<i32>(1i, -33896i, 1i), _wgslsmith_div_vec3_i32(u_input.c, vec3<i32>(5108i, firstLeadingBit(-1i), _wgslsmith_mod_i32(68012i, global1.a.x)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x + global1.c.x) - _wgslsmith_f_op_f32(min(1000f, -484f))), 1000f, global1.c.x))));
    let var_2 = ~(~select(u_input.b, firstLeadingBit(43541u), !var_1.x));
    return vec4<bool>(true, any(vec4<bool>(true, (var_0.x & 81i) <= 1i, !var_1.x && (true || var_1.x), true)), any(var_1.xxw), all(var_1.wzw));
}

fn func_1() -> vec2<f32> {
    var var_0 = !select(select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_2()), func_2()), select(func_2(), !func_2(), select(false, all(vec2<bool>(true, false)), true)), false);
    return _wgslsmith_f_op_vec2_f32(-global1.c.yz);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: i32) -> bool {
    let var_0 = true;
    var var_1 = -countOneBits(global1.b << (~firstTrailingBit(vec3<u32>(u_input.b, u_input.b, 22416u)) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_clamp_vec2_i32(select(vec2<i32>(_wgslsmith_mod_i32(~1i, ~2147483647i), select(arg_0.a.x, 10373i, global1.c.x != 1117f)), select(vec2<i32>(_wgslsmith_mod_i32(global1.a.x, arg_2), _wgslsmith_sub_i32(var_1.x, arg_0.b.x)), min(vec2<i32>(arg_0.b.x, global1.b.x), vec2<i32>(37228i, 11458i)) ^ vec2<i32>(u_input.a, 2147483647i), vec2<bool>(var_0 | false, !var_0)), select(vec2<bool>(true, var_0), vec2<bool>(var_0, all(vec3<bool>(true, false, false))), !(!vec2<bool>(var_0, false)))), (vec2<i32>(~(-2147483647i), arg_2) & _wgslsmith_mult_vec2_i32(-vec2<i32>(2147483647i, arg_2), _wgslsmith_clamp_vec2_i32(u_input.c.zz, vec2<i32>(arg_0.a.x, 27938i), u_input.c.xy))) << (vec2<u32>(0u, ~(~0u)) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(select(arg_0.b.zz, arg_0.a, vec2<bool>(true, var_0)), u_input.c.xx) & (u_input.c.yx | _wgslsmith_mod_vec2_i32(vec2<i32>(4472i, -78108i), vec2<i32>(26158i, 1i))), u_input.c.zy));
    let var_3 = -var_1.x;
    var var_4 = vec2<i32>(u_input.a, arg_2);
    return (func_2().x && (var_0 & (_wgslsmith_f_op_f32(max(128f, arg_0.c.x)) <= _wgslsmith_f_op_f32(-global1.c.x)))) | func_2().x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 880f;
    let var_1 = func_4(Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(-25465i, 1i) ^ abs(global1.a), vec2<i32>(u_input.c.x << (4294967295u % 32u), i32(-1i) * -2117i)), u_input.c, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - 514f) - global1.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 + var_0), var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x * 1000f) * 363f))), _wgslsmith_f_op_vec2_f32(func_1()), ~_wgslsmith_clamp_i32(2147483647i, global1.b.x, u_input.a ^ u_input.c.x));
    var var_2 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(57476u, u_input.b, max(~_wgslsmith_div_u32(u_input.b, u_input.b), u_input.b)));
}

