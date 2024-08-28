struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: array<vec4<u32>, 1> = array<vec4<u32>, 1>(vec4<u32>(25038u, 0u, 0u, 4294967295u));

var<private> global2: vec3<bool>;

var<private> global3: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global4: u32;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32) -> vec4<bool> {
    global0 = select(vec3<bool>(false, global0.x, all(vec3<bool>(true, any(global0.xy), true))), global3.zzy, select(true, global3.x, all(select(global0.zz, select(arg_0.a, global3.yx, arg_0.a), any(vec4<bool>(global3.x, true, global0.x, global2.x))))));
    let var_0 = arg_0;
    global1 = array<vec4<u32>, 1>();
    var var_1 = arg_0;
    global1 = array<vec4<u32>, 1>();
    return select(!select(vec4<bool>(!var_1.a.x, true, false, true), !vec4<bool>(true, false, arg_1.a, global2.x), vec4<bool>(global3.x, all(vec3<bool>(global3.x, arg_1.a, false)), var_1.a.x, any(vec4<bool>(false, true, global2.x, global3.x)))), !(!(!vec4<bool>(true, false, false, global0.x))), !(!select(!vec4<bool>(false, arg_1.a, arg_0.a.x, true), !vec4<bool>(true, var_0.a.x, false, true), var_0.a.x && arg_1.a)));
}

fn func_2() -> vec3<bool> {
    global2 = vec3<bool>(all(select(select(vec4<bool>(false, false, true, true), select(vec4<bool>(global0.x, false, global3.x, true), vec4<bool>(false, true, false, global2.x), vec4<bool>(global0.x, global2.x, true, global3.x)), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, true, true), global0.x)), true, any(!func_3(Struct_1(vec2<bool>(global3.x, true)), Struct_3(true), _wgslsmith_f_op_f32(-1099f + 1211f))));
    let var_0 = ~(~(~24006u));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-382f, -2326f, 405f, -1000f)))))))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-669f, 582f, -966f, 1859f))) * vec4<f32>(1f, 1f, 1f, 1f)))));
    let var_2 = Struct_4(Struct_3(true), Struct_3(!(!global2.x)), -_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(select(vec4<i32>(1i, 52132i, 0i, u_input.a.x), vec4<i32>(u_input.a.x, 0i, u_input.a.x, -2147483647i), global0.x), _wgslsmith_mult_vec4_i32(vec4<i32>(-42259i, 11093i, u_input.a.x, u_input.a.x), vec4<i32>(17713i, u_input.a.x, u_input.a.x, u_input.a.x))), max(select(vec4<i32>(u_input.a.x, u_input.a.x, -1i, -2147483647i), vec4<i32>(68794i, -1i, 2147483647i, u_input.a.x), vec4<bool>(global0.x, global2.x, global2.x, false)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x), vec4<i32>(-1i, 2147483647i, -14485i, -8028i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))), var_0);
    return vec3<bool>(select(var_0 == var_2.d, global2.x, !select(true, true, true)), (var_1.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-771f)))) & false, global2.x);
}

fn func_4(arg_0: vec3<bool>) -> i32 {
    var var_0 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(27417u, 2686u, 0u), firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 58381u, 1u), vec3<u32>(0u, 16669u, 59776u), vec3<u32>(5988u, 41598u, 1u)))), abs(~0u), 60059u);
    return ~u_input.a.x;
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = vec3<i32>((firstTrailingBit(3304i << (0u % 32u)) & -select(-72474i, u_input.a.x, global3.x)) ^ func_4(select(vec3<bool>(global0.x, global3.x, global2.x), func_2(), !global3.zxw)), _wgslsmith_clamp_i32(u_input.a.x, 1i, -1i), ~u_input.a.x);
    let var_1 = abs(min(~(~vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 1u, 1u)));
    var var_2 = Struct_2(global3.x & any(vec4<bool>(global3.x, global0.x, global2.x, func_2().x)));
    let var_3 = vec2<f32>(arg_0, -1664f);
    let var_4 = select(vec2<bool>(func_2().x, true), global2.zz, !global2.zy);
    return Struct_1(vec2<bool>(false, any(var_4)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1234f, -930f, -502f)), vec3<f32>(654f, 987f, -551f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1929f, 790f, -1165f) * vec3<f32>(1709f, 404f, -204f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1657f, 387f, -633f) * vec3<f32>(-765f, -625f, 1953f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2156f, -547f, -1945f)) - vec3<f32>(318f, -1062f, 1000f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(972f, -961f, -547f))), vec3<f32>(-465f, -791f, -1507f))) - vec3<f32>(373f, -598f, -249f))));
    var var_1 = Struct_1(vec2<bool>(false, global0.x));
    var_1 = func_1(_wgslsmith_f_op_f32(-var_0.x));
    var var_2 = u_input.a;
    var var_3 = ~(~abs(~1u));
    let var_4 = Struct_1(select(global3.ww, !(!vec2<bool>(global0.x, true)), vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~abs(min(vec3<u32>(1u, 0u, 72282u), vec3<u32>(35831u, 5088u, 30264u)))), 2147483647i, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1245f))))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(var_0.xz, _wgslsmith_f_op_vec2_f32(var_0.zy + vec2<f32>(273f, var_0.x)), global2.yz))))), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(var_2.x, 0i, var_2.x, u_input.a.x), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, 2147483647i, var_2.x, u_input.a.x), vec4<i32>(-1i, u_input.a.x, -35456i, -32489i))), ~(-vec4<i32>(-58257i, var_2.x, var_2.x, 2721i))), abs(vec4<i32>(-2147483647i, 29538i, u_input.a.x, var_2.x) & vec4<i32>(0i, 2147483647i, -2147483647i, u_input.a.x))));
}

