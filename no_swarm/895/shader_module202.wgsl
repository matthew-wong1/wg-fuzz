struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec3<bool>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: Struct_2,
    d: bool,
    e: u32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: f32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<u32>, 25>;

var<private> global2: Struct_1 = Struct_1(-1182f, 467f, 374f, vec4<u32>(1u, 45367u, 6429u, 33997u), -1612f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec4<bool>) -> bool {
    let var_0 = !select(vec3<bool>(true, true, true), arg_1.wxw, select(select(!vec3<bool>(false, arg_1.x, true), vec3<bool>(true, true, true), !vec3<bool>(true, arg_1.x, arg_1.x)), vec3<bool>(true, true, -710f <= global2.b), all(select(arg_1.xwx, vec3<bool>(false, false, arg_1.x), vec3<bool>(false, arg_1.x, arg_1.x)))));
    var var_1 = select(_wgslsmith_mod_u32(14971u, arg_0), u_input.a.x, var_0.x);
    var var_2 = vec3<bool>(all(!vec4<bool>(arg_1.x, arg_1.x, true, any(arg_1))), true, all(select(var_0.zz, arg_1.xz, var_0.xy)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-156f, _wgslsmith_f_op_f32(f32(-1f) * -758f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -510f), _wgslsmith_f_op_f32(sign(1000f))))))) + -2124f);
    let var_4 = !all(!select(select(arg_1, arg_1, var_0.x), !arg_1, var_0.x));
    return true;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<bool>) -> Struct_1 {
    global0 = !func_3(u_input.a.x, vec4<bool>(true, true, true, true));
    let var_0 = _wgslsmith_add_u32(9321u, global2.d.x);
    global0 = true & arg_0.x;
    var var_1 = Struct_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(457f, 1000f, global2.a, global2.c)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.b, -1129f, -996f, 972f))), _wgslsmith_div_vec4_f32(vec4<f32>(global2.b, global2.a, global2.c, -174f), vec4<f32>(1640f, 1000f, 402f, global2.c))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-451f, global2.a, global2.a, -693f), vec4<f32>(-230f, 175f, global2.a, -222f))))), global2.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, global2.c)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c, global2.b) + vec2<f32>(260f, global2.a)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1829f, global2.a)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(749f, 117f), vec2<f32>(global2.c, global2.a)))))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(548f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.e)) * _wgslsmith_f_op_f32(f32(-1f) * -3283f))), _wgslsmith_div_f32(183f, global2.b)) + var_1.a.x);
    return Struct_1(-1285f, var_2, -1156f, global2.d, 1142f);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_5, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = vec4<u32>(firstTrailingBit(~(~global2.d.x)), _wgslsmith_dot_vec2_u32(select(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 37958u), u_input.a.yz), ~(u_input.a.xx ^ vec2<u32>(u_input.a.x, 25544u)), vec2<bool>(true, arg_0.x)), global2.d.yy), ~_wgslsmith_div_u32(4294967295u, ~u_input.c >> (u_input.a.x % 32u)), _wgslsmith_sub_u32(_wgslsmith_div_u32(108997u, ~0u), _wgslsmith_mod_u32(~(~u_input.c), 68368u)));
    global2 = func_2(!(!(!vec2<bool>(arg_0.x, true))), !(!(!(!vec2<bool>(false, arg_0.x)))));
    let var_1 = select(true, true, _wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_2.x >> (8728u % 32u), 76012i), -u_input.b.x) < (select(u_input.b.x, max(-1i, u_input.b.x), !arg_0.x) | u_input.b.x));
    var var_2 = vec2<bool>(arg_0.x | (false | var_1), var_1);
    var var_3 = arg_2.x;
    return Struct_1(306f, _wgslsmith_f_op_f32(floor(global2.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -678f))), ~(~min(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 32165u, 20710u, 0u), vec4<u32>(global2.d.x, u_input.a.x, 1u, 16905u)), ~global1[_wgslsmith_index_u32(6881u, 25u)])), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-466f + -740f)))))));
}

fn func_4(arg_0: Struct_3) -> StorageBuffer {
    global1 = array<vec4<u32>, 25>();
    global2 = Struct_1(_wgslsmith_f_op_f32(select(global2.b, _wgslsmith_f_op_f32(step(global2.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -519f)))), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.c.b.a, _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-1100f * global2.a))), true)) - 1f), 1f, arg_0.c.b.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x * arg_0.c.b.c))))));
    var var_0 = _wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(4294967295u, global2.d.x)), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(u_input.c, u_input.a.x))) >> (arg_0.c.a.x % 32u), _wgslsmith_div_u32(max(reverseBits(global2.d.x | arg_0.c.a.x), firstTrailingBit(~global2.d.x)), 0u << (1u % 32u)), ~select(33855u, select(~arg_0.c.e.x, u_input.c, 4294967295u <= global2.d.x), false));
    global1 = array<vec4<u32>, 25>();
    global2 = func_1(!(!select(vec4<bool>(false, arg_0.a, true, arg_0.c.d.x), select(vec4<bool>(false, arg_0.c.d.x, arg_0.a, arg_0.c.d.x), vec4<bool>(arg_0.a, false, arg_0.a, arg_0.c.d.x), vec4<bool>(arg_0.a, true, arg_0.c.d.x, true)), any(vec4<bool>(arg_0.c.d.x, arg_0.a, arg_0.a, arg_0.a)))), Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1258f, arg_0.b.x, 1293f, -1327f), arg_0.b))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-arg_0.b)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c.b.e), -473f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2.e), _wgslsmith_f_op_f32(max(-275f, -2357f))))), abs(-max(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, -23806i, u_input.b.x), vec3<i32>(2646i, -41983i, u_input.b.x)), vec3<i32>(u_input.b.x, u_input.b.x, -1868i) ^ vec3<i32>(u_input.b.x, u_input.b.x, -1i))));
    return StorageBuffer(_wgslsmith_f_op_f32(exp2(arg_0.c.b.c)), 1u, _wgslsmith_mod_vec3_i32(-vec3<i32>(_wgslsmith_div_i32(-2147483647i, -20449i), _wgslsmith_clamp_i32(-5440i, 24859i, 1i), u_input.b.x), ~reverseBits(-vec3<i32>(-44219i, u_input.b.x, -26745i))), arg_0.c.b.d.x << (~(84485u ^ _wgslsmith_clamp_u32(u_input.a.x, arg_0.c.e.x, 1u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global2.d.x;
    var var_1 = vec3<bool>(~12017u != ~(~global2.d.x), false, true);
    var var_2 = u_input.b.x;
    var_0 = reverseBits(1u);
    global1 = array<vec4<u32>, 25>();
    let x = u_input.a;
    s_output = func_4(Struct_3(false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(894f, -2187f, 1308f, global2.e) - vec4<f32>(400f, 986f, 1134f, -731f))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(global2.e)), _wgslsmith_f_op_f32(select(652f, global2.a, var_1.x)), 1192f, _wgslsmith_f_op_f32(trunc(global2.c)))), Struct_2(vec2<u32>(17892u, 0u) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(global2.d.x, global2.d.x), u_input.a.zz, global2.d.ww) % vec2<u32>(32u)), func_1(vec4<bool>(true, false, true, var_1.x), Struct_5(vec4<f32>(-400f, global2.a, -1000f, global2.b), global2.e, vec2<f32>(121f, 1481f)), firstTrailingBit(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))), u_input.a.yx, select(select(vec3<bool>(true, var_1.x, true), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, var_1.x, var_1.x)), select(vec3<bool>(false, true, false), vec3<bool>(var_1.x, false, true), vec3<bool>(false, false, false)), true), vec2<u32>(global2.d.x, firstLeadingBit(31685u)))));
}

