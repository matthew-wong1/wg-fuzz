struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: f32,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: vec4<u32>,
    d: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

var<private> global1: vec3<i32>;

var<private> global2: array<vec3<u32>, 27>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: Struct_3) -> i32 {
    var var_0 = 20821i;
    var var_1 = true;
    global0 = select(!select(vec3<bool>(all(vec2<bool>(false, true)), -26149i > arg_1.b.a.x, all(vec4<bool>(arg_1.b.d.x, arg_2.d.x, arg_2.d.x, global0.x))), !arg_2.d, arg_1.a.wzz), select(!(!vec3<bool>(global0.x, arg_2.d.x, true)), arg_1.a.yxw, vec3<bool>(true, global0.x, any(vec2<bool>(global0.x, global0.x)))), !(arg_2.b.a.x >= _wgslsmith_div_u32(4294967295u, u_input.b)) | any(vec3<bool>(true, true, all(arg_1.b.d))));
    var_0 = 1i;
    var var_2 = _wgslsmith_div_u32(min(select(~abs(arg_2.b.a.x), countOneBits(max(arg_2.b.a.x, 4294967295u)), true), _wgslsmith_add_u32(u_input.b, countOneBits(~1u))), ~(~(arg_2.b.a.x & 0u)));
    return i32(-1i) * -arg_2.e.c;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> i32 {
    let var_0 = arg_1.a.x;
    var var_1 = Struct_3(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(32503i, u_input.a & 1i, arg_1.c.e.x ^ -58098i, _wgslsmith_add_i32(0i, arg_0.c)), ~min(arg_0.e, arg_0.e)), ~(-2147483647i), firstLeadingBit(func_2(arg_0.a, Struct_4(vec4<bool>(true, global0.x, global0.x, global0.x), Struct_3(arg_0.e.yxy, Struct_2(vec2<u32>(arg_1.a.x, var_0), arg_1.d, Struct_1(392f, vec3<f32>(arg_0.b.x, arg_1.d.a, arg_0.a), global1.x, vec3<f32>(-620f, arg_1.d.d.x, arg_1.e.a), vec4<i32>(global1.x, 1i, -68804i, arg_0.c)), Struct_1(arg_1.c.d.x, vec3<f32>(arg_0.a, -769f, arg_1.e.b.x), arg_1.c.c, arg_0.b, arg_1.e.e), arg_0), arg_0.b.x, vec3<bool>(global0.x, true, global0.x), Struct_1(arg_0.a, arg_1.d.b, 8742i, vec3<f32>(arg_1.c.a, arg_0.d.x, arg_0.d.x), vec4<i32>(32703i, u_input.a, -3670i, arg_0.c))), vec4<u32>(13631u, 4294967295u, 1u, 1u), global0.x), Struct_3(arg_1.d.e.wwx, arg_1, -454f, vec3<bool>(false, false, false), arg_1.e)))), Struct_2(vec2<u32>(var_0, _wgslsmith_dot_vec2_u32(abs(arg_1.a), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(33386u, var_0)))), Struct_1(arg_0.d.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.a, -449f, arg_1.b.d.x) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.b.a, arg_1.c.a, arg_1.b.d.x)))), _wgslsmith_sub_i32(43259i, 1i), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.d.x), arg_1.b.a, _wgslsmith_div_f32(arg_1.c.b.x, -1000f)), ~vec4<i32>(global1.x, arg_1.d.e.x, 1i, 2147483647i)), arg_1.e, Struct_1(_wgslsmith_f_op_f32(ceil(arg_1.c.b.x)), _wgslsmith_f_op_vec3_f32(-arg_0.b), (arg_1.c.c & 33675i) | -2147483647i, _wgslsmith_f_op_vec3_f32(arg_0.b * arg_0.b), vec4<i32>(u_input.a, arg_1.c.c, abs(arg_0.c), min(global1.x, arg_1.d.e.x))), arg_0), 452f, !select(!vec3<bool>(false, global0.x, global0.x), !(!vec3<bool>(global0.x, true, global0.x)), select(vec3<bool>(global0.x, global0.x, false), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x), false), vec3<bool>(true, true, false))), arg_1.b);
    var var_2 = Struct_3(firstLeadingBit(_wgslsmith_sub_vec3_i32(min(var_1.b.d.e.xyy, arg_1.e.e.wwy), abs(_wgslsmith_add_vec3_i32(arg_1.c.e.zwz, arg_0.e.wyz)))), arg_1, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_0.d.x, var_1.e.a)), _wgslsmith_f_op_f32(arg_0.b.x * 1346f))) * -330f))), !var_1.d, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -933f), arg_1.e.b, arg_0.c, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, -177f, -917f) * arg_0.d)))), arg_0.e >> (~(~vec4<u32>(16939u, 0u, var_0, u_input.b)) % vec4<u32>(32u))));
    let var_3 = select(!(!vec4<bool>(true, all(var_1.d.xz), true, var_2.e.b.x != arg_1.b.b.x)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(var_1.d.xx), global0.x));
    var_1 = Struct_3(~max(vec3<i32>(-2147483647i | arg_0.c, 1i, u_input.a), arg_1.c.e.yzx), Struct_2(~_wgslsmith_mult_vec2_u32(var_1.b.a, var_2.b.a), var_2.b.d, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_1.d.a)), _wgslsmith_f_op_f32(ceil(496f))), arg_1.c.d, func_2(-287f, Struct_4(var_3, Struct_3(vec3<i32>(24687i, u_input.a, arg_1.b.e.x), Struct_2(vec2<u32>(10744u, var_0), var_2.e, Struct_1(arg_0.a, vec3<f32>(arg_1.b.d.x, var_2.e.d.x, -128f), -2147483647i, arg_0.b, vec4<i32>(var_2.a.x, 24228i, 43303i, 54078i)), var_1.b.b, Struct_1(106f, vec3<f32>(var_2.b.c.d.x, arg_1.d.d.x, var_2.e.b.x), u_input.a, arg_1.d.b, var_2.b.c.e)), var_2.b.b.d.x, vec3<bool>(false, true, var_1.d.x), Struct_1(543f, vec3<f32>(arg_1.c.a, 954f, var_1.b.e.a), 2147483647i, var_2.b.d.d, vec4<i32>(arg_1.d.e.x, var_2.a.x, 2147483647i, 2147483647i))), vec4<u32>(0u, 46545u, 49764u, 18727u), false), Struct_3(vec3<i32>(-16447i, 2147483647i, 25120i), var_1.b, var_2.b.d.a, var_2.d, arg_0)), arg_1.b.b, _wgslsmith_sub_vec4_i32(arg_1.e.e, var_2.b.b.e)), arg_0, Struct_1(_wgslsmith_f_op_f32(-var_2.b.d.a), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2464f, var_2.b.e.b.x, var_1.e.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(609f, -1767f, arg_1.c.d.x) + arg_1.b.b))), var_1.a.x, arg_0.b, vec4<i32>(global1.x, ~(-1i), 2147483647i, -22538i))), var_1.c, !vec3<bool>(var_2.d.x, select(select(false, var_1.d.x, global0.x), all(var_2.d), false), global0.x), Struct_1(-1630f, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1270f, arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -232f)), arg_1.e.d)), 3450i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(arg_1.c.d)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-248f, var_1.e.a, arg_1.b.d.x)))), _wgslsmith_f_op_vec3_f32(-var_1.e.d)), vec4<i32>((u_input.a ^ 7432i) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(20860u, 29699u), vec2<u32>(u_input.b, 70464u)) % 32u), -(var_2.b.b.c ^ arg_1.c.e.x), 5810i, func_2(-750f, Struct_4(var_3, Struct_3(vec3<i32>(394i, arg_0.e.x, 2147483647i), Struct_2(vec2<u32>(arg_1.a.x, var_1.b.a.x), var_1.b.d, var_2.b.c, var_2.b.d, Struct_1(var_2.e.a, arg_0.b, global1.x, vec3<f32>(-1000f, 637f, arg_0.d.x), var_2.b.c.e)), var_2.c, var_1.d, Struct_1(-583f, vec3<f32>(var_1.b.c.d.x, arg_1.e.b.x, arg_0.b.x), 1786i, vec3<f32>(var_1.b.e.d.x, -306f, 156f), var_1.b.e.e)), vec4<u32>(76658u, var_0, u_input.b, 0u), var_2.d.x), Struct_3(var_2.e.e.wxz, var_1.b, var_1.c, vec3<bool>(false, true, false), Struct_1(var_2.c, vec3<f32>(1763f, -2049f, arg_1.b.a), var_1.a.x, arg_0.b, arg_0.e))))));
    return 0i;
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_3) -> Struct_3 {
    global2 = array<vec3<u32>, 27>();
    let var_0 = Struct_4(vec4<bool>(true, (~u_input.a > 0i) | arg_2.d.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -939f), -370f)) >= _wgslsmith_f_op_f32(-arg_2.e.a), any(arg_2.d)), Struct_3(~arg_2.e.e.yxy << (max(vec3<u32>(4294967295u, 103727u, u_input.b), ~vec3<u32>(arg_2.b.a.x, u_input.b, arg_2.b.a.x)) % vec3<u32>(32u)), Struct_2(_wgslsmith_mult_vec2_u32(arg_2.b.a, _wgslsmith_sub_vec2_u32(arg_2.b.a, arg_2.b.a)), Struct_1(_wgslsmith_f_op_f32(arg_2.b.b.d.x + arg_2.c), arg_2.b.d.d, i32(-1i) * -11009i, vec3<f32>(arg_2.e.b.x, 496f, arg_2.e.d.x), ~arg_2.b.e.e), arg_2.e, Struct_1(-932f, arg_2.b.b.d, 3136i, _wgslsmith_div_vec3_f32(vec3<f32>(-504f, arg_2.b.e.b.x, -223f), vec3<f32>(-410f, 346f, arg_2.b.c.d.x)), select(arg_2.b.b.e, vec4<i32>(-30360i, arg_2.e.c, global1.x, 1i), vec4<bool>(arg_2.d.x, global0.x, true, false))), arg_2.b.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.e.b.x, -694f), arg_2.b.c.a)), arg_2.d, arg_2.e), ~reverseBits(~countOneBits(vec4<u32>(u_input.b, arg_2.b.a.x, u_input.b, 25604u))), all(vec4<bool>(!global0.x, all(!global0.yy), true, false)));
    let var_1 = Struct_5(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.b.c + 872f), var_0.b.e.b.x))), var_0);
    var var_2 = -2147483647i;
    global2 = array<vec3<u32>, 27>();
    return var_0.b;
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = 0u;
    let var_1 = func_4(global0.x, reverseBits(vec2<i32>(~1i, func_2(-417f, Struct_4(vec4<bool>(true, global0.x, true, false), Struct_3(vec3<i32>(u_input.a, u_input.a, -14278i), Struct_2(vec2<u32>(u_input.b, u_input.b), arg_1, arg_1, arg_1, Struct_1(arg_1.d.x, vec3<f32>(arg_1.d.x, 1650f, -1385f), 24356i, arg_1.d, vec4<i32>(arg_0, arg_0, -12401i, arg_0))), 1222f, vec3<bool>(true, true, true), arg_1), vec4<u32>(u_input.b, u_input.b, u_input.b, 9567u), false), Struct_3(vec3<i32>(arg_1.e.x, u_input.a, 0i), Struct_2(vec2<u32>(33434u, u_input.b), Struct_1(1174f, vec3<f32>(arg_1.d.x, arg_1.d.x, -1178f), 0i, vec3<f32>(2967f, -862f, -307f), arg_1.e), arg_1, Struct_1(arg_1.a, vec3<f32>(arg_1.b.x, -1000f, 451f), global1.x, arg_1.b, arg_1.e), Struct_1(arg_1.d.x, arg_1.b, u_input.a, vec3<f32>(693f, arg_1.d.x, -695f), vec4<i32>(arg_0, arg_1.c, -19616i, -2147483647i))), arg_1.b.x, vec3<bool>(global0.x, global0.x, global0.x), arg_1)))) | global1.zz, Struct_3(vec3<i32>(-70794i, _wgslsmith_add_i32(func_2(arg_1.b.x, Struct_4(vec4<bool>(global0.x, true, global0.x, global0.x), Struct_3(arg_1.e.yyy, Struct_2(vec2<u32>(1u, 0u), arg_1, arg_1, arg_1, arg_1), 1675f, vec3<bool>(global0.x, false, global0.x), arg_1), vec4<u32>(u_input.b, 4280u, 77034u, u_input.b), true), Struct_3(vec3<i32>(-76817i, u_input.a, -1i), Struct_2(vec2<u32>(4294967295u, 36338u), arg_1, arg_1, arg_1, arg_1), arg_1.b.x, vec3<bool>(false, false, false), arg_1)), _wgslsmith_clamp_i32(arg_1.c, arg_0, -17857i)), global1.x), Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 0u) >> (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u)), ~vec2<u32>(u_input.b, 39717u)), Struct_1(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1152f, arg_1.b.x, 1000f)), arg_0 & arg_1.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, -541f, arg_1.b.x)), vec4<i32>(46961i, global1.x, -2147483647i, -59671i)), arg_1, arg_1, Struct_1(-1247f, vec3<f32>(373f, -905f, -1000f), 0i, _wgslsmith_f_op_vec3_f32(arg_1.d + vec3<f32>(arg_1.b.x, 1592f, -867f)), vec4<i32>(45191i, -21163i, -2147483647i, arg_0))), arg_1.a, select(vec3<bool>(!global0.x, any(vec4<bool>(false, global0.x, true, true)), !global0.x), vec3<bool>(true, global0.x || global0.x, global0.x & true), !(arg_1.d.x >= 191f)), Struct_1(-1000f, vec3<f32>(_wgslsmith_f_op_f32(round(arg_1.d.x)), _wgslsmith_f_op_f32(arg_1.d.x - arg_1.d.x), _wgslsmith_f_op_f32(-arg_1.b.x)), _wgslsmith_mult_i32(reverseBits(92380i), func_3(arg_1, Struct_2(vec2<u32>(0u, 28631u), arg_1, Struct_1(1810f, vec3<f32>(arg_1.a, arg_1.a, arg_1.a), 1i, vec3<f32>(1193f, arg_1.d.x, 1255f), vec4<i32>(16844i, 66524i, arg_0, arg_0)), Struct_1(923f, arg_1.d, 68370i, arg_1.d, arg_1.e), Struct_1(arg_1.b.x, arg_1.b, 13630i, arg_1.d, vec4<i32>(22238i, 1i, 12841i, arg_0))))), vec3<f32>(-2188f, -256f, _wgslsmith_f_op_f32(trunc(arg_1.d.x))), max(vec4<i32>(-1i, u_input.a, -36078i, 46338i), arg_1.e ^ arg_1.e))));
    var var_2 = Struct_5(Struct_4(select(vec4<bool>(true, true, all(vec4<bool>(false, true, true, var_1.d.x)), all(vec4<bool>(true, global0.x, true, false))), vec4<bool>(global0.x, !global0.x, false, false), true), Struct_3(min(arg_1.e.zxx, -arg_1.e.xzz), func_4(true, ~global1.yy, Struct_3(vec3<i32>(0i, -2147483647i, global1.x), var_1.b, var_1.c, vec3<bool>(true, var_1.d.x, var_1.d.x), Struct_1(1171f, arg_1.d, -4193i, vec3<f32>(-605f, var_1.c, var_1.c), vec4<i32>(0i, global1.x, u_input.a, -9309i)))).b, var_1.e.a, !select(vec3<bool>(global0.x, var_1.d.x, false), vec3<bool>(global0.x, var_1.d.x, var_1.d.x), vec3<bool>(true, global0.x, var_1.d.x)), func_4(var_1.d.x, arg_1.e.xw, Struct_3(vec3<i32>(24105i, -2147483647i, arg_0), Struct_2(var_1.b.a, arg_1, Struct_1(835f, vec3<f32>(1993f, arg_1.d.x, arg_1.a), arg_1.e.x, vec3<f32>(arg_1.a, var_1.e.b.x, 356f), arg_1.e), arg_1, arg_1), arg_1.a, var_1.d, Struct_1(arg_1.d.x, var_1.e.b, 0i, vec3<f32>(var_1.c, -580f, -1534f), vec4<i32>(1671i, -1i, 1i, -2147483647i)))).b.e), abs(~(~vec4<u32>(0u, 8815u, u_input.b, u_input.b))), !any(vec4<bool>(false, true, var_1.d.x, false))), 2884f, Struct_4(!vec4<bool>(false, global0.x, func_4(false, vec2<i32>(global1.x, 12842i), var_1).d.x, !var_1.d.x), var_1, min(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.b.a.x, var_1.b.a.x, 32459u, var_1.b.a.x), vec4<u32>(var_1.b.a.x, 1u, 1u, u_input.b)), vec4<u32>(u_input.b, 4294967295u, u_input.b, var_1.b.a.x) >> (vec4<u32>(var_1.b.a.x, 1u, u_input.b, var_1.b.a.x) % vec4<u32>(32u))), vec4<u32>(var_1.b.a.x, _wgslsmith_sub_u32(49087u, u_input.b), var_1.b.a.x, ~u_input.b)), var_1.d.x));
    var var_3 = func_4(func_4(true & (36459u >= (u_input.b | var_2.c.b.b.a.x)), select(select(vec2<i32>(var_1.b.e.e.x, -44474i), var_2.c.b.e.e.xz & vec2<i32>(46234i, 18125i), false), (vec2<i32>(4654i, 0i) << (vec2<u32>(var_1.b.a.x, var_2.a.c.x) % vec2<u32>(32u))) << (_wgslsmith_add_vec2_u32(vec2<u32>(var_1.b.a.x, 1695u), vec2<u32>(var_2.a.b.b.a.x, u_input.b)) % vec2<u32>(32u)), !(!var_1.d.xy)), Struct_3(_wgslsmith_clamp_vec3_i32(var_1.b.c.e.wxz, vec3<i32>(33039i, var_1.e.c, arg_1.e.x), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, arg_0, var_2.c.b.e.c), var_1.a)), func_4(true, _wgslsmith_div_vec2_i32(var_2.c.b.b.c.e.yz, vec2<i32>(0i, arg_0)), var_2.a.b).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1993f)), func_4(!global0.x, countOneBits(vec2<i32>(21515i, -59688i)), func_4(false, vec2<i32>(34384i, u_input.a), var_1)).d, func_4(var_1.b.a.x == 1u, ~arg_1.e.zx, Struct_3(arg_1.e.xzx, var_2.c.b.b, var_1.b.d.d.x, vec3<bool>(var_1.d.x, var_1.d.x, var_2.c.a.x), var_2.c.b.b.e)).e)).d.x, arg_1.e.xx, func_4(false, _wgslsmith_sub_vec2_i32(global1.zz, -vec2<i32>(u_input.a, arg_0)), func_4(var_1.d.x, vec2<i32>(-1i) * -vec2<i32>(global1.x, 0i), var_1))).b;
    let var_4 = Struct_3(func_4(any(vec3<bool>(var_2.a.b.d.x, any(var_2.c.a), any(vec3<bool>(global0.x, true, false)))), vec2<i32>(arg_0 >> (var_1.b.a.x % 32u), var_1.e.e.x), Struct_3(-arg_1.e.xxy, Struct_2(vec2<u32>(u_input.b, var_3.a.x), var_1.b.c, Struct_1(763f, var_1.b.d.b, 1i, arg_1.b, arg_1.e), Struct_1(-171f, var_3.d.b, 3626i, vec3<f32>(arg_1.d.x, 1000f, var_2.a.b.e.b.x), vec4<i32>(-1i, global1.x, var_2.c.b.b.d.c, 6248i)), Struct_1(1000f, vec3<f32>(arg_1.a, -764f, -385f), 1i, vec3<f32>(var_3.c.a, var_2.c.b.e.d.x, 1000f), var_1.b.e.e)), arg_1.b.x, var_2.a.b.d, func_4(true, abs(var_2.c.b.e.e.wy), var_2.a.b).b.b)).b.e.e.wxw, var_1.b, arg_1.b.x, var_2.c.a.zxz, var_1.b.e);
    return func_4(true, vec2<i32>(-41011i, -12502i), var_4).b;
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3, arg_3: u32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0)));
    let var_1 = func_4(global0.x | all(vec4<bool>(arg_2.d.x, global0.x, func_4(arg_2.d.x, vec2<i32>(-12831i, 1i), Struct_3(arg_2.b.e.e.yyz, arg_1, -142f, arg_2.d, arg_2.b.b)).d.x, true)), ~func_4(any(arg_2.d), vec2<i32>(19049i, arg_1.c.e.x), Struct_3(vec3<i32>(-10700i, arg_2.e.c, u_input.a), arg_1, arg_2.e.d.x, arg_2.d, Struct_1(1000f, vec3<f32>(-1278f, arg_0, var_0), 2227i, arg_2.e.d, arg_1.b.e))).e.e.yy | global1.yy, arg_2);
    let var_2 = _wgslsmith_f_op_f32(select(-1319f, _wgslsmith_f_op_f32(floor(-727f)), var_1.d.x || arg_2.d.x));
    var var_3 = ~_wgslsmith_div_u32(0u, ~28325u);
    var var_4 = Struct_4(vec4<bool>(any(vec2<bool>(true, !var_1.d.x)), true, !func_4(arg_2.d.x | true, _wgslsmith_sub_vec2_i32(var_1.b.c.e.zw, vec2<i32>(2147483647i, global1.x)), arg_2).d.x, all(!select(var_1.d, arg_2.d, vec3<bool>(var_1.d.x, true, var_1.d.x)))), func_4(!global0.x, vec2<i32>(1i, -(~global1.x)), Struct_3(select(min(vec3<i32>(-7901i, arg_1.b.e.x, arg_2.b.e.c), arg_1.e.e.wwx), -arg_2.e.e.yxy, vec3<bool>(global0.x, global0.x, true)), func_4(arg_2.d.x, arg_1.d.e.wy, var_1).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(780f, var_0)) * -273f), var_1.d, func_4(func_4(true, arg_1.b.e.wx, Struct_3(vec3<i32>(global1.x, 0i, 1i), var_1.b, 1717f, var_1.d, Struct_1(-1000f, arg_2.e.b, arg_1.c.c, vec3<f32>(arg_1.c.a, var_1.c, var_2), arg_1.e.e))).d.x, vec2<i32>(11934i, 5405i), Struct_3(vec3<i32>(9952i, arg_2.e.e.x, -1i), Struct_2(var_1.b.a, var_1.e, var_1.e, Struct_1(660f, vec3<f32>(-816f, 1780f, -856f), 0i, arg_1.c.d, var_1.e.e), arg_1.c), -236f, vec3<bool>(false, arg_2.d.x, true), Struct_1(var_2, var_1.e.d, var_1.e.c, vec3<f32>(arg_2.c, var_2, 1480f), arg_1.c.e))).b.c)), abs(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(4294967295u, 7782u, var_1.b.a.x, arg_3)), vec4<u32>(13302u, arg_3, arg_1.a.x, 33765u)), countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, var_1.b.a.x, var_1.b.a.x, u_input.b), vec4<u32>(u_input.b, 0u, var_1.b.a.x, 0u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.b.b.x + _wgslsmith_div_f32(arg_0, -274f))) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_1.b.d.x)))))));
    return var_1;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: vec3<f32>) -> f32 {
    global2 = array<vec3<u32>, 27>();
    global2 = array<vec3<u32>, 27>();
    var var_0 = Struct_4(arg_2, Struct_3(arg_0.a, func_5(_wgslsmith_f_op_f32(-505f + _wgslsmith_f_op_f32(-190f * 1028f)), arg_0.b, arg_1, ~arg_0.b.a.x).b, arg_1.b.d.a, arg_1.d, arg_1.b.c), vec4<u32>(reverseBits(min(~43411u, 0u << (u_input.b % 32u))), _wgslsmith_add_u32(4294967295u, arg_1.b.a.x ^ (arg_0.b.a.x >> (u_input.b % 32u))), ~4294967295u, abs(_wgslsmith_clamp_u32(23454u, 1u, arg_1.b.a.x | 34032u))), any(!vec3<bool>(true, arg_1.b.b.a > arg_3.x, false)));
    let var_1 = 0u;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(abs(var_0.b.e.b.x)), arg_0.e.d, u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_3.x, arg_0.b.d.a, func_4(true, arg_0.e.e.xw, Struct_3(vec3<i32>(2147483647i, arg_1.a.x, arg_1.e.c), arg_0.b, arg_3.x, vec3<bool>(arg_1.d.x, true, arg_1.d.x), Struct_1(-1740f, arg_1.e.b, u_input.a, vec3<f32>(-2355f, -1000f, arg_1.c), arg_0.e.e))).e.d.x)))), ~func_5(-209f, var_0.b.b, Struct_3(vec3<i32>(1i, 0i, global1.x), func_5(arg_3.x, arg_1.b, var_0.b, 4294967295u).b, 1428f, arg_0.d, func_1(var_0.b.e.c, var_0.b.b.d).d), _wgslsmith_mult_u32(23075u, var_0.c.x)).b.c.e);
    return -2021f;
}

fn func_7(arg_0: f32) -> Struct_5 {
    var var_0 = Struct_2(reverseBits(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(7813u, u_input.b)), _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.b, 27470u), ~vec2<u32>(0u, 0u)))), func_1(u_input.a, Struct_1(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0, 455f, 975f)))), 49705i, _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 826f, -1004f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, 397f, arg_0), vec3<f32>(arg_0, arg_0, arg_0)))), func_4(1u >= u_input.b, firstLeadingBit(vec2<i32>(global1.x, u_input.a)), func_5(arg_0, Struct_2(vec2<u32>(25990u, 10772u), Struct_1(arg_0, vec3<f32>(arg_0, -396f, -1678f), global1.x, vec3<f32>(arg_0, arg_0, arg_0), vec4<i32>(global1.x, global1.x, u_input.a, 16330i)), Struct_1(arg_0, vec3<f32>(arg_0, -500f, -2041f), 1i, vec3<f32>(arg_0, arg_0, -275f), vec4<i32>(global1.x, u_input.a, -6981i, u_input.a)), Struct_1(759f, vec3<f32>(-122f, arg_0, -366f), global1.x, vec3<f32>(arg_0, -1000f, 503f), vec4<i32>(1i, u_input.a, -2147483647i, u_input.a)), Struct_1(arg_0, vec3<f32>(-958f, -669f, arg_0), u_input.a, vec3<f32>(arg_0, arg_0, arg_0), vec4<i32>(u_input.a, -2147483647i, global1.x, u_input.a))), Struct_3(vec3<i32>(global1.x, -2147483647i, -1i), Struct_2(vec2<u32>(u_input.b, 1u), Struct_1(arg_0, vec3<f32>(arg_0, arg_0, 488f), global1.x, vec3<f32>(-526f, arg_0, 611f), vec4<i32>(u_input.a, 1i, u_input.a, -38681i)), Struct_1(arg_0, vec3<f32>(1327f, 1665f, arg_0), -1i, vec3<f32>(arg_0, 980f, arg_0), vec4<i32>(-2147483647i, u_input.a, global1.x, global1.x)), Struct_1(arg_0, vec3<f32>(1197f, -1330f, arg_0), global1.x, vec3<f32>(-1000f, -550f, -1108f), vec4<i32>(global1.x, 2147483647i, 0i, global1.x)), Struct_1(arg_0, vec3<f32>(arg_0, arg_0, arg_0), 0i, vec3<f32>(arg_0, 221f, arg_0), vec4<i32>(global1.x, 52014i, u_input.a, 4967i))), -917f, vec3<bool>(global0.x, global0.x, true), Struct_1(arg_0, vec3<f32>(421f, arg_0, 1170f), 22043i, vec3<f32>(arg_0, arg_0, -825f), vec4<i32>(global1.x, u_input.a, global1.x, -118i))), 87u)).e.e)).c, Struct_1(1740f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-286f, arg_0, arg_0), vec3<f32>(-1109f, arg_0, arg_0))) * vec3<f32>(_wgslsmith_f_op_f32(trunc(247f)), arg_0, arg_0)), ~global1.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-547f, 341f, 916f)))))), ~select(_wgslsmith_mult_vec4_i32(vec4<i32>(16776i, u_input.a, -11141i, global1.x), vec4<i32>(8348i, -2147483647i, -2147483647i, u_input.a)), select(vec4<i32>(u_input.a, u_input.a, u_input.a, 49200i), vec4<i32>(-36918i, -11345i, -1i, global1.x), vec4<bool>(global0.x, global0.x, true, false)), false)), Struct_1(677f, vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-443f * -803f), arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-279f + 1000f) - _wgslsmith_f_op_f32(f32(-1f) * -523f))), global1.x | (_wgslsmith_div_i32(u_input.a, u_input.a) & u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, arg_0, 2014f), vec3<f32>(-139f, arg_0, arg_0)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-220f, 1202f, arg_0), vec3<f32>(853f, arg_0, -992f))))), abs(func_4(global0.x, vec2<i32>(1i, 51438i), Struct_3(vec3<i32>(u_input.a, 2753i, global1.x), Struct_2(vec2<u32>(0u, u_input.b), Struct_1(-108f, vec3<f32>(arg_0, arg_0, 203f), 26984i, vec3<f32>(arg_0, arg_0, arg_0), vec4<i32>(global1.x, 16530i, 23561i, 2147483647i)), Struct_1(arg_0, vec3<f32>(arg_0, arg_0, arg_0), 9661i, vec3<f32>(arg_0, 1039f, -687f), vec4<i32>(-7131i, global1.x, u_input.a, u_input.a)), Struct_1(1160f, vec3<f32>(811f, arg_0, 539f), global1.x, vec3<f32>(-1236f, arg_0, arg_0), vec4<i32>(-14765i, u_input.a, global1.x, 2222i)), Struct_1(-217f, vec3<f32>(arg_0, arg_0, arg_0), 2147483647i, vec3<f32>(arg_0, -551f, arg_0), vec4<i32>(-9517i, 0i, global1.x, global1.x))), 1351f, vec3<bool>(false, false, false), Struct_1(435f, vec3<f32>(143f, arg_0, arg_0), -13660i, vec3<f32>(arg_0, -241f, arg_0), vec4<i32>(45236i, u_input.a, -55759i, 2147483647i)))).b.b.e)), Struct_1(_wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-339f, -1519f, -320f))) - vec3<f32>(_wgslsmith_div_f32(arg_0, arg_0), -660f, _wgslsmith_f_op_f32(func_6(Struct_3(vec3<i32>(u_input.a, 2147483647i, -14289i), Struct_2(vec2<u32>(41430u, u_input.b), Struct_1(arg_0, vec3<f32>(arg_0, arg_0, -155f), global1.x, vec3<f32>(arg_0, arg_0, -100f), vec4<i32>(-2147483647i, global1.x, 1i, u_input.a)), Struct_1(132f, vec3<f32>(212f, arg_0, -189f), global1.x, vec3<f32>(-1897f, -985f, 683f), vec4<i32>(34707i, global1.x, u_input.a, u_input.a)), Struct_1(-1278f, vec3<f32>(116f, -401f, 209f), 2147483647i, vec3<f32>(-954f, -369f, -1966f), vec4<i32>(-2147483647i, global1.x, u_input.a, 0i)), Struct_1(arg_0, vec3<f32>(-1515f, -2421f, -1000f), u_input.a, vec3<f32>(arg_0, arg_0, -1598f), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), arg_0, vec3<bool>(true, global0.x, global0.x), Struct_1(-145f, vec3<f32>(arg_0, arg_0, 1000f), u_input.a, vec3<f32>(arg_0, arg_0, 1071f), vec4<i32>(global1.x, global1.x, u_input.a, u_input.a))), Struct_3(vec3<i32>(22949i, -2147483647i, 2147483647i), Struct_2(vec2<u32>(u_input.b, u_input.b), Struct_1(arg_0, vec3<f32>(arg_0, -721f, arg_0), -17565i, vec3<f32>(1907f, arg_0, -168f), vec4<i32>(42951i, -6710i, global1.x, 20227i)), Struct_1(arg_0, vec3<f32>(arg_0, arg_0, arg_0), 48807i, vec3<f32>(arg_0, 2333f, arg_0), vec4<i32>(12587i, u_input.a, global1.x, -40010i)), Struct_1(-777f, vec3<f32>(-1000f, arg_0, arg_0), 2147483647i, vec3<f32>(-720f, arg_0, 338f), vec4<i32>(global1.x, -7217i, -1i, global1.x)), Struct_1(523f, vec3<f32>(-1024f, 1059f, 1750f), global1.x, vec3<f32>(arg_0, 761f, 683f), vec4<i32>(u_input.a, u_input.a, 77834i, 2147483647i))), -1000f, vec3<bool>(false, false, global0.x), Struct_1(936f, vec3<f32>(194f, 470f, -309f), 33476i, vec3<f32>(arg_0, arg_0, -1000f), vec4<i32>(-1i, -49541i, -2147483647i, 75857i))), vec4<bool>(global0.x, global0.x, global0.x, false), vec3<f32>(1299f, -1458f, arg_0))))), _wgslsmith_mult_i32(func_4(global0.x, vec2<i32>(1i, 52223i), func_5(arg_0, Struct_2(vec2<u32>(u_input.b, u_input.b), Struct_1(1725f, vec3<f32>(-516f, 1132f, 1523f), global1.x, vec3<f32>(arg_0, -1709f, arg_0), vec4<i32>(-52549i, u_input.a, -54975i, -19760i)), Struct_1(-282f, vec3<f32>(arg_0, 1608f, arg_0), global1.x, vec3<f32>(arg_0, 279f, arg_0), vec4<i32>(2147483647i, -23211i, u_input.a, 32530i)), Struct_1(arg_0, vec3<f32>(655f, arg_0, arg_0), -1i, vec3<f32>(-1300f, arg_0, 1502f), vec4<i32>(u_input.a, -14545i, u_input.a, 7168i)), Struct_1(1000f, vec3<f32>(arg_0, arg_0, -1733f), -24778i, vec3<f32>(arg_0, arg_0, 119f), vec4<i32>(global1.x, 0i, u_input.a, global1.x))), Struct_3(vec3<i32>(-48864i, u_input.a, -1660i), Struct_2(vec2<u32>(u_input.b, u_input.b), Struct_1(501f, vec3<f32>(arg_0, arg_0, -720f), global1.x, vec3<f32>(arg_0, 1000f, arg_0), vec4<i32>(u_input.a, global1.x, u_input.a, -1i)), Struct_1(arg_0, vec3<f32>(-1655f, arg_0, 1030f), u_input.a, vec3<f32>(arg_0, arg_0, arg_0), vec4<i32>(global1.x, -2209i, 1i, -1i)), Struct_1(-1000f, vec3<f32>(arg_0, -599f, 866f), -19241i, vec3<f32>(-974f, arg_0, 676f), vec4<i32>(global1.x, u_input.a, -2147483647i, -625i)), Struct_1(101f, vec3<f32>(569f, arg_0, -190f), global1.x, vec3<f32>(arg_0, 1104f, arg_0), vec4<i32>(global1.x, -63099i, 1i, u_input.a))), -182f, vec3<bool>(false, false, false), Struct_1(-1271f, vec3<f32>(arg_0, arg_0, 236f), u_input.a, vec3<f32>(-368f, -653f, 666f), vec4<i32>(5255i, u_input.a, u_input.a, 0i))), u_input.b)).a.x, -2147483647i | (-36540i & global1.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 718f, arg_0) + vec3<f32>(252f, 1039f, -554f))) + func_5(-495f, func_5(-120f, Struct_2(vec2<u32>(14313u, u_input.b), Struct_1(arg_0, vec3<f32>(arg_0, arg_0, arg_0), u_input.a, vec3<f32>(811f, -242f, -1934f), vec4<i32>(u_input.a, global1.x, 1i, u_input.a)), Struct_1(1190f, vec3<f32>(905f, arg_0, 1214f), -2147483647i, vec3<f32>(arg_0, arg_0, 326f), vec4<i32>(7090i, 0i, u_input.a, 11828i)), Struct_1(arg_0, vec3<f32>(arg_0, -182f, arg_0), -14830i, vec3<f32>(arg_0, 846f, arg_0), vec4<i32>(global1.x, global1.x, u_input.a, global1.x)), Struct_1(657f, vec3<f32>(arg_0, arg_0, -260f), 1i, vec3<f32>(arg_0, 1180f, -909f), vec4<i32>(0i, -1i, -19132i, u_input.a))), Struct_3(vec3<i32>(global1.x, -1i, -1i), Struct_2(vec2<u32>(u_input.b, u_input.b), Struct_1(699f, vec3<f32>(arg_0, arg_0, -1049f), global1.x, vec3<f32>(-572f, -606f, 667f), vec4<i32>(-50816i, global1.x, u_input.a, 1i)), Struct_1(arg_0, vec3<f32>(-1865f, 2051f, 1000f), u_input.a, vec3<f32>(629f, 1842f, 1511f), vec4<i32>(global1.x, u_input.a, -804i, -1i)), Struct_1(-124f, vec3<f32>(arg_0, 512f, 192f), 2147483647i, vec3<f32>(352f, -759f, -1875f), vec4<i32>(-1i, global1.x, u_input.a, -2147483647i)), Struct_1(arg_0, vec3<f32>(arg_0, -710f, -323f), -6267i, vec3<f32>(arg_0, arg_0, arg_0), vec4<i32>(-2147483647i, global1.x, 7859i, -2147483647i))), -199f, vec3<bool>(false, global0.x, true), Struct_1(arg_0, vec3<f32>(arg_0, arg_0, 290f), global1.x, vec3<f32>(arg_0, arg_0, arg_0), vec4<i32>(-26983i, 19570i, 1i, global1.x))), 114692u).b, func_4(global0.x, global1.zy, Struct_3(vec3<i32>(2147483647i, u_input.a, u_input.a), Struct_2(vec2<u32>(u_input.b, 0u), Struct_1(arg_0, vec3<f32>(arg_0, arg_0, arg_0), 18569i, vec3<f32>(arg_0, arg_0, -1139f), vec4<i32>(1i, global1.x, u_input.a, 1i)), Struct_1(-412f, vec3<f32>(-1316f, arg_0, arg_0), global1.x, vec3<f32>(2932f, arg_0, 1223f), vec4<i32>(2684i, u_input.a, u_input.a, global1.x)), Struct_1(-1158f, vec3<f32>(1082f, arg_0, arg_0), 7647i, vec3<f32>(356f, arg_0, arg_0), vec4<i32>(0i, global1.x, global1.x, global1.x)), Struct_1(796f, vec3<f32>(arg_0, arg_0, arg_0), 1i, vec3<f32>(arg_0, arg_0, -1024f), vec4<i32>(global1.x, global1.x, -38320i, u_input.a))), -106f, vec3<bool>(global0.x, false, true), Struct_1(-207f, vec3<f32>(arg_0, arg_0, -848f), u_input.a, vec3<f32>(-1721f, arg_0, -718f), vec4<i32>(global1.x, u_input.a, u_input.a, global1.x)))), 0u).b.d.d), -_wgslsmith_add_vec4_i32(vec4<i32>(global1.x, u_input.a, 14259i, global1.x), vec4<i32>(2147483647i, global1.x, global1.x, global1.x)) << (vec4<u32>(func_1(u_input.a, Struct_1(arg_0, vec3<f32>(arg_0, arg_0, 270f), -8461i, vec3<f32>(arg_0, 899f, arg_0), vec4<i32>(34263i, global1.x, 1i, 13246i))).a.x, u_input.b, u_input.b ^ 59222u, u_input.b) % vec4<u32>(32u))));
    var var_1 = Struct_3(var_0.d.e.wzw, Struct_2(~(~firstTrailingBit(var_0.a)), Struct_1(1820f, func_1(var_0.d.c, var_0.d).d.d, 45614i, _wgslsmith_f_op_vec3_f32(-var_0.b.d), var_0.b.e >> ((vec4<u32>(u_input.b, 36505u, 6389u, 1u) & vec4<u32>(u_input.b, 89147u, 28546u, u_input.b)) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(func_6(Struct_3(var_0.e.e.yzz, Struct_2(vec2<u32>(u_input.b, var_0.a.x), var_0.b, var_0.c, Struct_1(var_0.e.b.x, vec3<f32>(arg_0, 1868f, var_0.e.d.x), global1.x, vec3<f32>(var_0.e.d.x, var_0.c.a, -946f), var_0.b.e), Struct_1(var_0.d.d.x, vec3<f32>(-2210f, var_0.b.a, var_0.b.b.x), -2147483647i, var_0.e.b, vec4<i32>(21163i, 1i, 0i, -34509i))), arg_0, vec3<bool>(false, global0.x, true), var_0.c), func_5(-501f, Struct_2(var_0.a, Struct_1(var_0.e.a, var_0.c.b, 2147483647i, vec3<f32>(-394f, var_0.e.b.x, arg_0), var_0.d.e), Struct_1(var_0.c.d.x, var_0.b.b, -42816i, vec3<f32>(-121f, var_0.d.a, arg_0), vec4<i32>(global1.x, -33088i, 1i, u_input.a)), var_0.e, var_0.c), Struct_3(vec3<i32>(19592i, -50594i, var_0.c.e.x), Struct_2(var_0.a, Struct_1(var_0.e.a, vec3<f32>(var_0.e.b.x, 893f, var_0.c.a), -2147483647i, var_0.e.b, vec4<i32>(2147483647i, -1i, 44320i, 2147483647i)), Struct_1(1473f, vec3<f32>(var_0.b.d.x, var_0.e.a, arg_0), -1i, var_0.c.d, var_0.d.e), var_0.b, Struct_1(407f, vec3<f32>(-2250f, var_0.e.b.x, 1598f), u_input.a, vec3<f32>(-624f, -183f, 1000f), vec4<i32>(20453i, 47370i, u_input.a, 1i))), -1000f, vec3<bool>(global0.x, true, false), Struct_1(arg_0, var_0.c.d, -1i, var_0.d.d, var_0.d.e)), var_0.a.x), select(vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(false, true, false, global0.x)), var_0.b.b)), vec3<f32>(var_0.e.a, var_0.c.a, _wgslsmith_div_f32(var_0.d.a, -448f)), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -21207i, u_input.a), var_0.d.e.xzw)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-504f, 526f, arg_0), vec3<f32>(342f, 1050f, -473f))), vec4<i32>(-14571i, -711i, ~2147483647i, _wgslsmith_dot_vec4_i32(var_0.b.e, vec4<i32>(var_0.e.c, -68794i, 2147483647i, 0i)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(var_0.b.d.x * 1000f)), var_0.d.d, _wgslsmith_mult_i32(-23829i, global1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b.b - vec3<f32>(-546f, arg_0, arg_0))), vec4<i32>(min(11646i, global1.x), _wgslsmith_mod_i32(global1.x, 27427i), 40285i, ~4648i)), var_0.d), 1000f, !(!vec3<bool>(!global0.x, false && global0.x, !global0.x)), var_0.d);
    let var_2 = Struct_3(var_1.e.e.zzw, Struct_2(vec2<u32>(~1u, ~func_1(global1.x, var_0.e).a.x), var_1.b.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1420f * 1592f)), vec3<f32>(_wgslsmith_f_op_f32(-arg_0), -657f, -332f), -_wgslsmith_clamp_i32(-5094i, 1i, var_0.b.e.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_0.d.b)), _wgslsmith_f_op_vec3_f32(round(var_1.b.c.d))), vec4<i32>(-1i, global1.x, func_3(var_0.d, Struct_2(var_1.b.a, Struct_1(-228f, vec3<f32>(arg_0, var_1.e.d.x, 552f), -33111i, vec3<f32>(var_1.c, var_1.b.d.b.x, 384f), var_1.b.d.e), var_1.e, Struct_1(-924f, var_0.d.b, -2147483647i, var_1.b.d.b, var_0.e.e), var_0.e)), -2147483647i)), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(391f, var_0.b.b.x, global0.x)), -628f)), var_0.d.b, ~global1.x >> (u_input.b % 32u), _wgslsmith_div_vec3_f32(func_4(global0.x, vec2<i32>(72198i, var_1.a.x), Struct_3(var_0.c.e.xwy, Struct_2(var_1.b.a, var_0.b, Struct_1(var_1.b.b.d.x, var_1.b.d.d, 2147483647i, var_1.e.d, vec4<i32>(-2147483647i, 1i, var_0.c.c, 14427i)), var_1.b.e, var_0.b), 2301f, vec3<bool>(var_1.d.x, true, false), var_0.b)).b.b.d, var_0.d.b), vec4<i32>(func_2(1626f, Struct_4(vec4<bool>(true, global0.x, false, false), Struct_3(var_1.b.e.e.xyz, var_1.b, 451f, var_1.d, Struct_1(-1303f, vec3<f32>(var_1.e.b.x, arg_0, var_0.d.d.x), var_1.e.e.x, var_1.b.c.b, var_1.b.b.e)), vec4<u32>(var_1.b.a.x, u_input.b, var_1.b.a.x, var_1.b.a.x), global0.x), Struct_3(var_0.d.e.zxx, var_1.b, -499f, var_1.d, var_0.d)), func_1(u_input.a, Struct_1(-374f, vec3<f32>(-651f, arg_0, 103f), global1.x, var_1.b.e.b, vec4<i32>(u_input.a, 2147483647i, 2381i, global1.x))).e.e.x, func_3(Struct_1(-1903f, var_0.c.b, 9154i, var_0.c.d, var_0.d.e), var_1.b), 0i)), func_4(true, select(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, 2147483647i), global1.yy), vec2<i32>(-1i, var_1.a.x), func_5(634f, var_1.b, Struct_3(vec3<i32>(u_input.a, var_1.e.c, -47059i), Struct_2(var_0.a, var_1.e, Struct_1(540f, var_0.d.b, 30137i, vec3<f32>(-182f, -1367f, arg_0), var_0.e.e), var_1.e, var_1.b.e), 531f, vec3<bool>(global0.x, var_1.d.x, false), Struct_1(1191f, vec3<f32>(var_0.e.d.x, arg_0, 365f), 35292i, vec3<f32>(arg_0, arg_0, arg_0), var_1.e.e)), 0u).d.xy), func_4(false, ~vec2<i32>(-4787i, -5153i), func_4(true, global1.yy, Struct_3(vec3<i32>(var_1.e.c, global1.x, 1632i), Struct_2(vec2<u32>(var_1.b.a.x, var_1.b.a.x), var_1.e, var_1.e, Struct_1(2042f, var_1.e.d, u_input.a, vec3<f32>(arg_0, -1073f, var_1.e.d.x), var_0.c.e), Struct_1(-122f, var_1.b.c.b, 2147483647i, var_1.e.b, var_1.b.e.e)), arg_0, var_1.d, var_1.e)))).b.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -263f))), var_1.d, func_5(_wgslsmith_f_op_f32(-arg_0), func_4(false, -var_1.b.d.e.xx & ~vec2<i32>(56941i, -1i), func_4(true, select(vec2<i32>(46076i, var_1.b.d.e.x), vec2<i32>(var_0.e.c, -1i), var_1.d.yy), Struct_3(vec3<i32>(-2147483647i, -11392i, var_0.b.c), Struct_2(var_1.b.a, var_0.d, var_1.e, var_0.b, var_0.b), var_1.b.e.d.x, vec3<bool>(global0.x, global0.x, global0.x), var_0.d))).b, Struct_3(~vec3<i32>(var_1.b.b.e.x, -16545i, u_input.a), var_1.b, _wgslsmith_div_f32(arg_0, -1139f), func_4(false, vec2<i32>(u_input.a, var_1.a.x) >> (vec2<u32>(var_0.a.x, 21584u) % vec2<u32>(32u)), Struct_3(vec3<i32>(var_1.b.e.c, var_0.d.e.x, 2147483647i), Struct_2(vec2<u32>(var_1.b.a.x, var_1.b.a.x), var_1.e, Struct_1(1458f, vec3<f32>(var_1.b.c.d.x, var_0.e.d.x, var_1.c), var_0.b.e.x, var_1.b.b.d, var_1.e.e), Struct_1(-1759f, var_1.e.d, var_1.e.e.x, var_1.b.d.d, var_0.b.e), Struct_1(var_1.c, vec3<f32>(var_1.e.b.x, -1235f, -129f), 1i, vec3<f32>(-398f, -474f, -1468f), vec4<i32>(var_1.b.c.c, var_0.d.c, u_input.a, global1.x))), -1000f, vec3<bool>(global0.x, true, global0.x), var_0.d)).d, var_0.b), 47205u).e);
    global1 = firstTrailingBit(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(-2147483647i, var_2.a.x, 1i) << ((vec3<u32>(var_2.b.a.x, 1u, 38007u) ^ global2[_wgslsmith_index_u32(var_0.a.x, 27u)]) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(-var_2.b.b.e.zxz, var_2.b.b.e.ywx), !(global0.x & var_2.d.x)), abs(vec3<i32>(0i, -47141i, 2147483647i)), vec3<i32>(var_2.e.c >> (var_2.b.a.x % 32u), abs(53915i), _wgslsmith_add_i32(u_input.a, var_0.e.e.x)) | firstTrailingBit(-vec3<i32>(2147483647i, -1i, -60140i))));
    var var_3 = 55258u;
    return Struct_5(Struct_4(vec4<bool>(select(!var_1.d.x, true, select(false, true, true)), global0.x && true, select(select(false, true, var_1.d.x), any(vec2<bool>(var_1.d.x, true)), global0.x), all(!vec4<bool>(global0.x, var_2.d.x, true, false))), var_2, reverseBits(~select(vec4<u32>(4294967295u, 68069u, 40802u, u_input.b), vec4<u32>(39982u, u_input.b, var_0.a.x, 4294967295u), vec4<bool>(false, true, true, false))), true), 1117f, Struct_4(!(!select(vec4<bool>(var_2.d.x, false, true, var_1.d.x), vec4<bool>(var_2.d.x, var_2.d.x, var_1.d.x, false), vec4<bool>(var_2.d.x, false, true, true))), func_4(all(select(vec3<bool>(var_1.d.x, true, var_2.d.x), vec3<bool>(true, global0.x, var_1.d.x), vec3<bool>(false, false, true))), vec2<i32>(-1i ^ global1.x, i32(-1i) * -1i), func_4(true, vec2<i32>(-1i, 1i), func_4(var_2.d.x, vec2<i32>(-1i, var_0.e.e.x), var_2))), reverseBits(vec4<u32>(_wgslsmith_sub_u32(u_input.b, u_input.b), ~1u, ~var_1.b.a.x, 0u)), var_1.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<u32>, 27>();
    var var_0 = ~(~(~vec3<u32>(u_input.b, u_input.b, ~u_input.b)));
    let var_1 = func_7(_wgslsmith_f_op_f32(func_6(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-464f))), func_1(-2147483647i, Struct_1(-902f, vec3<f32>(-866f, 1377f, -1000f), -1i, vec3<f32>(645f, 426f, -1832f), vec4<i32>(global1.x, u_input.a, u_input.a, u_input.a))), func_4(true, -vec2<i32>(global1.x, u_input.a), Struct_3(vec3<i32>(global1.x, u_input.a, -38115i), Struct_2(var_0.zx, Struct_1(-1380f, vec3<f32>(-719f, -1360f, 613f), u_input.a, vec3<f32>(-462f, -868f, 894f), vec4<i32>(-9157i, -45160i, -2147483647i, 2147483647i)), Struct_1(-1427f, vec3<f32>(-1130f, -2542f, -622f), -2147483647i, vec3<f32>(514f, -1363f, -354f), vec4<i32>(1i, global1.x, u_input.a, 0i)), Struct_1(183f, vec3<f32>(187f, 1478f, -1296f), global1.x, vec3<f32>(-664f, 1543f, 1000f), vec4<i32>(u_input.a, u_input.a, 48638i, global1.x)), Struct_1(-130f, vec3<f32>(181f, 1552f, -947f), -40229i, vec3<f32>(-614f, 692f, -1000f), vec4<i32>(global1.x, 2147483647i, 1i, global1.x))), -851f, vec3<bool>(false, global0.x, false), Struct_1(1658f, vec3<f32>(-684f, 493f, -694f), global1.x, vec3<f32>(-189f, 862f, 101f), vec4<i32>(global1.x, -22085i, -29926i, 1i)))), 4294967295u), func_4(all(!vec4<bool>(global0.x, true, global0.x, global0.x)), _wgslsmith_mod_vec2_i32(~vec2<i32>(global1.x, global1.x), global1.zz), func_5(1166f, Struct_2(var_0.xx, Struct_1(-2755f, vec3<f32>(1003f, 286f, 663f), global1.x, vec3<f32>(926f, 1000f, -1005f), vec4<i32>(global1.x, 0i, u_input.a, 2147483647i)), Struct_1(-123f, vec3<f32>(1042f, 2560f, -2114f), 20756i, vec3<f32>(-121f, 1000f, -294f), vec4<i32>(global1.x, 8864i, u_input.a, u_input.a)), Struct_1(148f, vec3<f32>(-649f, 1000f, -245f), u_input.a, vec3<f32>(814f, 653f, -728f), vec4<i32>(u_input.a, -28660i, global1.x, u_input.a)), Struct_1(-1204f, vec3<f32>(450f, -794f, -1141f), 0i, vec3<f32>(-416f, -650f, -566f), vec4<i32>(global1.x, -1i, 0i, 65188i))), func_5(-1207f, Struct_2(vec2<u32>(u_input.b, var_0.x), Struct_1(-1293f, vec3<f32>(540f, -1393f, -1000f), u_input.a, vec3<f32>(1794f, -499f, 317f), vec4<i32>(u_input.a, 2147483647i, u_input.a, global1.x)), Struct_1(1440f, vec3<f32>(360f, -814f, 2055f), 1i, vec3<f32>(-207f, 470f, -225f), vec4<i32>(global1.x, 5101i, u_input.a, u_input.a)), Struct_1(-890f, vec3<f32>(1861f, 569f, 1956f), -17112i, vec3<f32>(1368f, -762f, -2285f), vec4<i32>(19226i, global1.x, -1i, 62332i)), Struct_1(244f, vec3<f32>(-496f, -2888f, 951f), 1i, vec3<f32>(-551f, 950f, 1328f), vec4<i32>(-38632i, 0i, global1.x, u_input.a))), Struct_3(vec3<i32>(u_input.a, global1.x, -2147483647i), Struct_2(var_0.zy, Struct_1(1090f, vec3<f32>(1373f, -1290f, -205f), u_input.a, vec3<f32>(-725f, -706f, 1000f), vec4<i32>(global1.x, 2147483647i, -1i, -45656i)), Struct_1(1432f, vec3<f32>(-1533f, 672f, 1514f), -49013i, vec3<f32>(-579f, 1000f, -1000f), vec4<i32>(2147483647i, u_input.a, -9810i, global1.x)), Struct_1(1897f, vec3<f32>(-698f, -142f, 621f), global1.x, vec3<f32>(-1000f, -491f, -979f), vec4<i32>(873i, global1.x, u_input.a, u_input.a)), Struct_1(1882f, vec3<f32>(-1189f, 930f, -2295f), u_input.a, vec3<f32>(-364f, -879f, -1000f), vec4<i32>(global1.x, 14043i, u_input.a, global1.x))), -782f, vec3<bool>(global0.x, false, false), Struct_1(110f, vec3<f32>(-1516f, -1079f, -762f), u_input.a, vec3<f32>(201f, -588f, -580f), vec4<i32>(u_input.a, u_input.a, -1i, 80434i))), u_input.b), 81259u)), !vec4<bool>(global0.x, true, -1i >= global1.x, true), vec3<f32>(_wgslsmith_f_op_f32(-436f * _wgslsmith_div_f32(817f, -501f)), -437f, _wgslsmith_f_op_f32(select(-867f, _wgslsmith_f_op_f32(1728f * -250f), global1.x < u_input.a))))));
    var var_2 = true;
    global1 = var_1.a.b.e.e.yzw & ~(~abs(vec3<i32>(u_input.a, global1.x, -23444i)));
    var_0 = countOneBits(~(vec3<u32>(58267u, _wgslsmith_dot_vec2_u32(var_0.zz, vec2<u32>(1u, u_input.b)), 1u) >> (var_1.c.c.zww % vec3<u32>(32u))));
    var var_3 = Struct_5(var_1.c, _wgslsmith_div_f32(-207f, _wgslsmith_div_f32(-706f, var_1.c.b.c)), func_7(var_1.a.b.b.e.d.x).a);
    let x = u_input.a;
    s_output = StorageBuffer(1u, 12535i, func_1(global1.x, func_4(true, abs(vec2<i32>(2147483647i, global1.x) & global1.xy), var_3.c.b).e).e.e, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.b.c, _wgslsmith_f_op_f32(var_1.b - var_1.a.b.c), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a.b.e.a)))) - func_7(_wgslsmith_f_op_f32(func_6(func_7(var_3.b).c.b, func_5(var_3.a.b.b.c.d.x, var_3.c.b.b, var_3.c.b, 45402u), vec4<bool>(false, global0.x, true, true), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_3.b, -1671f, var_3.a.b.e.b.x), var_3.c.b.e.d))))).a.b.b.d.b), vec2<i32>(2147483647i, ~1i));
}

