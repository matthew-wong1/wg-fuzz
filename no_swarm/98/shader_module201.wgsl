struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, 545f, 1538f)))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(1000f, 800f), _wgslsmith_f_op_f32(global0.x + 2156f), global0.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(global0.x, 2158f, global0.x))), vec3<f32>(-1260f, global0.x, global0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-854f, global0.x, -1000f) + vec3<f32>(global0.x, global0.x, global0.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, -903f, -229f)))))));
    global0 = var_0;
    global0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_div_f32(global0.x, 186f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x)))))));
    var var_1 = Struct_1((arg_1.a >> (10373u % 32u)) | reverseBits(select(u_input.a.x, 950u, true) >> (max(0u, 4294967295u) % 32u)), abs(_wgslsmith_dot_vec3_i32(~max(vec3<i32>(arg_0, u_input.b.x, 0i), arg_1.c), u_input.b.www)), vec3<i32>(0i, 39440i, u_input.d.x));
    let var_2 = Struct_1(_wgslsmith_dot_vec4_u32(select(~vec4<u32>(4294967295u, 4294967295u, var_1.a, var_1.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a.x, var_1.a, 0u), vec4<u32>(var_1.a, u_input.a.x, 4294967295u, 43028u), vec4<u32>(arg_1.a, 81538u, 14832u, u_input.a.x)), vec4<bool>(true, true, true, true)) | (firstTrailingBit(vec4<u32>(var_1.a, arg_1.a, 0u, 32149u)) | abs(vec4<u32>(70463u, u_input.a.x, 24848u, u_input.a.x))), ~(~vec4<u32>(4294967295u, var_1.a, 68252u, 66771u))), -(-1i >> (u_input.a.x % 32u)), (arg_1.c << (vec3<u32>(19017u, 1u, 0u) % vec3<u32>(32u))) << (~firstTrailingBit(vec3<u32>(21949u, u_input.a.x, 30063u) ^ vec3<u32>(48393u, 0u, 44669u)) % vec3<u32>(32u)));
    return ~var_2.c;
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = Struct_2(Struct_1(u_input.a.x, u_input.b.x, -(vec3<i32>(-1i) * -u_input.c)), !vec3<bool>(false, all(vec3<bool>(true, true, true)), arg_0), Struct_1(4294967295u >> (0u % 32u), -u_input.b.x, _wgslsmith_add_vec3_i32(~(-vec3<i32>(-55706i, 7537i, u_input.b.x)), -vec3<i32>(u_input.c.x, 0i, u_input.d.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 139f) * _wgslsmith_f_op_f32(1111f - -183f))), -734f));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.d.x, -1483f, 1884f))))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, -1280f, global0.x)), vec3<f32>(global0.x, global0.x, 1267f)), vec3<f32>(global0.x, 1136f, -1480f)))));
    let var_1 = var_0.c;
    let var_2 = Struct_2(var_1, var_0.b, Struct_1(var_1.a, abs(0i), abs(min(var_1.c, var_1.c))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -821f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -835f))));
    var var_3 = var_0;
    return _wgslsmith_dot_vec3_i32(-(~func_3(~(-1i), Struct_1(40215u, 1i, vec3<i32>(-10622i, u_input.c.x, var_2.a.b)))), var_2.c.c & (vec3<i32>(firstLeadingBit(1i), _wgslsmith_mult_i32(u_input.b.x, var_3.a.c.x), u_input.c.x) << (vec3<u32>(~var_1.a, _wgslsmith_mult_u32(4929u, var_2.c.a), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.a, var_3.c.a), u_input.a)) % vec3<u32>(32u))));
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.a.x;
    let var_1 = max(~1u ^ u_input.a.x, 1u);
    var var_2 = ~(~(u_input.d.x | func_2(true)));
    return Struct_1(var_1, -1i, vec3<i32>(abs(-2147483647i), ~5904i, _wgslsmith_add_i32(abs(-43489i), u_input.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec4<bool>(true, select(true, true, true), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), (_wgslsmith_f_op_f32(step(global0.x, 1693f)) < _wgslsmith_f_op_f32(step(402f, 185f))) || !(global0.x > global0.x)));
    let var_1 = Struct_2(func_1(), select(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), vec3<bool>(select(true, true, u_input.a.x >= u_input.a.x), true, all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)))), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)), func_1(), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global0.xz + vec2<f32>(global0.x, -296f)))), global0.yz)))));
    var var_2 = max(~u_input.a, ~u_input.a);
    var_2 = countOneBits(vec2<u32>(~var_1.a.a, ~31988u));
    var var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a << (_wgslsmith_sub_vec2_u32(min(~u_input.a, ~u_input.a), u_input.a) % vec2<u32>(32u)), countOneBits(u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u & firstTrailingBit(72631u), ~var_1.c.a, firstLeadingBit(0u), _wgslsmith_add_u32(firstTrailingBit(1u), ~var_1.a.a)), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(4294967295u, var_2.x, 1u, var_3.a.a)), ~(~vec4<u32>(var_2.x, 0u, 1u, 38171u)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d.x), -1423f) * var_3.d.x), _wgslsmith_mod_vec3_i32(-vec3<i32>(select(u_input.c.x, var_3.c.b, false), -var_3.c.c.x, -96316i & var_3.c.c.x), var_3.c.c));
}

