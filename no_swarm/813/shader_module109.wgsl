struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(486f);

var<private> global1: Struct_1 = Struct_1(-1551f);

var<private> global2: vec2<i32> = vec2<i32>(1i, 0i);

var<private> global3: Struct_1 = Struct_1(1824f);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = arg_0;
    global0 = arg_0;
    var var_1 = -739f;
    let var_2 = !select(select(vec3<bool>(true, true, all(vec4<bool>(true, false, false, false))), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), true), vec3<bool>(false, (0u != u_input.c.x) & true, all(vec3<bool>(false, false, false))), vec3<bool>(all(vec4<bool>(true, true, true, false)), false, true));
    var var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -810f)))), -947f));
    return vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1599f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global3.a)))))), _wgslsmith_f_op_f32(-108f * 2195f), global3.a, _wgslsmith_div_f32(global3.a, -100f));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(1454f);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global0.a, global0.a, global3.a)))) + vec4<f32>(_wgslsmith_f_op_f32(global1.a + global1.a), -1431f, _wgslsmith_f_op_f32(-1000f - 610f), _wgslsmith_f_op_f32(select(global1.a, 364f, true)))), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(_wgslsmith_f_op_f32(221f * 308f)))))));
    global2 = _wgslsmith_mod_vec2_i32(-(vec2<i32>(abs(-2147483647i), _wgslsmith_mod_i32(2147483647i, u_input.e)) << (abs(vec2<u32>(u_input.c.x, 62778u)) % vec2<u32>(32u))), ((_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, global2.x), vec2<i32>(u_input.d, u_input.b)) & vec2<i32>(0i, global2.x)) | _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, global2.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(-10432i, global2.x), vec2<i32>(u_input.e, global2.x)))) >> (vec2<u32>(_wgslsmith_sub_u32(u_input.c.x, _wgslsmith_div_u32(u_input.c.x, 0u)), _wgslsmith_sub_u32(1511u, _wgslsmith_sub_u32(u_input.c.x, u_input.a.x))) % vec2<u32>(32u)));
    var var_2 = select(vec2<bool>(false || (~global2.x <= (-25385i ^ global2.x)), all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), true)) | select(any(vec3<bool>(true, true, false)), select(false, false, true), true)), select(!vec2<bool>(true, select(true, false, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), true), true)), !any(vec2<bool>(true, true))), select(vec2<bool>(any(vec2<bool>(false, true)), all(vec2<bool>(true, true))), !(!select(vec2<bool>(false, true), vec2<bool>(false, false), false)), vec2<bool>(true, true)));
    let var_3 = vec3<u32>(~u_input.c.x << (60727u % 32u), u_input.c.x, 91636u & min(max(~u_input.a.x, _wgslsmith_div_u32(4294967295u, 1u)), abs(u_input.a.x)));
    return Struct_1(_wgslsmith_f_op_f32(min(-454f, _wgslsmith_f_op_f32(step(-617f, _wgslsmith_f_op_f32(-var_0.a))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: f32, arg_3: vec4<bool>) -> f32 {
    global1 = arg_0;
    var var_0 = false;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(arg_1.x)))));
    let var_2 = _wgslsmith_sub_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, 19929u, u_input.a.x), vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.c.x)), u_input.a.x), ~vec3<u32>(u_input.a.x, 1u, 4294967295u), vec3<u32>(4387u, ~4294967295u, ~u_input.c.x)), ~max(vec3<u32>(_wgslsmith_clamp_u32(u_input.c.x, 74377u, 4294967295u), u_input.c.x >> (u_input.c.x % 32u), min(u_input.a.x, 106326u)), ~(~vec3<u32>(u_input.c.x, u_input.a.x, 66503u))));
    var var_3 = false;
    return 506f;
}

fn func_1(arg_0: vec3<i32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, global1.a, global3.a)));
    let var_1 = Struct_1(_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(func_4(func_2(), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2029f - var_0.x) - _wgslsmith_f_op_f32(f32(-1f) * -1569f)), vec4<bool>(true, true, all(vec2<bool>(false, false)), true)))));
    var var_2 = ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x | u_input.c.x, 0u, ~93597u, ~7808u), vec4<u32>(u_input.c.x, ~50758u, u_input.a.x, 4037u)), ~abs(54905u) ^ _wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.c.x, u_input.a.x), vec2<u32>(u_input.c.x, u_input.c.x)), ~u_input.c));
    global3 = Struct_1(-1304f);
    global3 = var_1;
    return vec2<bool>(false, !(abs(u_input.b) <= arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(reverseBits(vec2<i32>(u_input.e & ~global2.x, -23184i)));
    let var_1 = any(vec3<bool>(any(vec2<bool>(true, true)), all(func_1(vec3<i32>(2147483647i, var_0.x, -2147483647i))) || !(-428f > global3.a), true));
    let var_2 = vec4<i32>(-1139i, ~(global2.x & u_input.b) << (~(~_wgslsmith_add_u32(u_input.a.x, u_input.a.x)) % 32u), -1i, abs(-1i));
    global2 = -var_2.wy;
    var var_3 = abs(vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(var_2.zxy, vec3<i32>(5361i, 35067i, global2.x), var_2.wxy), var_2.yzw), reverseBits(_wgslsmith_mult_vec3_i32(var_2.zxw, vec3<i32>(19864i, var_0.x, -31983i)))), abs(2147483647i), var_2.x));
    var_0 = select(-(var_3.zy << ((u_input.a >> (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u))) % vec2<u32>(32u))) << ((~u_input.c ^ ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.a)) % vec2<u32>(32u)), var_2.zx & firstLeadingBit(vec2<i32>(var_0.x, _wgslsmith_add_i32(43573i, global2.x))), var_1);
    var var_4 = func_2();
    var_0 = var_3.yy;
    let var_5 = global1.a;
    let x = u_input.a;
    s_output = StorageBuffer(-1292f, ~(vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, 0u), 4294967295u, _wgslsmith_mod_u32(u_input.c.x, u_input.c.x)) << ((vec3<u32>(33015u, u_input.a.x, u_input.a.x) >> (firstTrailingBit(vec3<u32>(u_input.c.x, u_input.a.x, u_input.a.x)) % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-943f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a, global3.a) - _wgslsmith_f_op_f32(min(global3.a, 201f))))));
}

