struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<u32>,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(108f, 333f, 516f, 175f);

var<private> global1: u32;

var<private> global2: Struct_2;

var<private> global3: vec3<bool>;

var<private> global4: u32 = 48504u;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1(arg_0: Struct_5) -> u32 {
    var var_0 = reverseBits(~(vec4<u32>(~arg_0.b.x, select(global2.c.b.x, 24375u, true), _wgslsmith_mod_u32(global2.c.a, 41332u), ~global2.b.b.x) << ((vec4<u32>(arg_0.a.a, 11855u, arg_0.b.x, 15594u) >> (reverseBits(vec4<u32>(global2.b.a, 32900u, global2.c.a, global2.b.b.x)) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_1 = Struct_4(global2.c.c, Struct_3(arg_0.d.x, global2.c.d));
    var var_2 = var_1;
    var_0 = arg_0.a.b;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.a, -2004f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -950f), arg_0.d.x)));
    return 4294967295u;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: Struct_3, arg_3: i32) -> i32 {
    let var_0 = arg_0;
    var var_1 = select(!select(select(vec3<bool>(false, arg_1.a, true), vec3<bool>(false, false, arg_1.a), true), !vec3<bool>(global2.c.c, true, arg_1.a), select(vec3<bool>(arg_1.a, global2.c.c, global2.c.c), !vec3<bool>(false, true, global2.c.c), !arg_1.a)), !vec3<bool>(global2.c.c, true, true), vec3<bool>(global2.b.c, true, all(!(!vec3<bool>(false, global2.b.c, global2.b.c)))));
    global3 = select(vec3<bool>(all(vec4<bool>(any(global3.xz), global2.c.c, true, any(vec3<bool>(global2.c.c, true, true)))), var_1.x, all(!vec3<bool>(global3.x, arg_1.a, arg_1.a))), select(select(select(vec3<bool>(true, true, false), vec3<bool>(global3.x, arg_1.a, var_1.x), !vec3<bool>(global3.x, false, arg_1.a)), vec3<bool>(!arg_1.a, false, true), all(select(vec4<bool>(true, global2.c.c, arg_1.a, var_1.x), vec4<bool>(true, true, false, global3.x), true))), !select(select(vec3<bool>(global2.b.c, var_1.x, true), vec3<bool>(false, true, arg_1.a), true), select(vec3<bool>(var_1.x, false, false), vec3<bool>(global2.b.c, var_1.x, true), var_1.x), vec3<bool>(true, global3.x, global3.x)), all(vec3<bool>(!arg_1.a, var_0.x >= -919f, true))), false);
    let var_2 = 20343u;
    var var_3 = Struct_1(0u, ~global2.b.b, !(!any(global3.yy)), _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, u_input.a, arg_3, arg_2.b) | (~vec4<i32>(-19254i, u_input.a, u_input.b, 0i) >> (vec4<u32>(var_2, var_2, 41670u, var_2) % vec4<u32>(32u))), -_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 1i, -1i, 0i), vec4<i32>(arg_2.b, arg_3, arg_3, 2147483647i)) | vec4<i32>(_wgslsmith_clamp_i32(arg_2.b, u_input.b, 0i), arg_1.b.b, arg_1.b.b, arg_2.b & 2859i)));
    return -2147483647i;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: i32) -> vec3<u32> {
    var var_0 = 4294967295u;
    let var_1 = Struct_4(global2.c.c, Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, 936f)), _wgslsmith_f_op_f32(global0.x * -110f)), func_3(vec4<f32>(_wgslsmith_f_op_f32(step(-472f, 1000f)), -1449f, _wgslsmith_f_op_f32(global0.x + 123f), global0.x), Struct_4(any(vec3<bool>(global3.x, false, global3.x)), Struct_3(global0.x, 0i)), Struct_3(global0.x, countOneBits(-2147483647i)), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, -13751i), global2.a), global2.b.d))));
    global2 = Struct_2(vec3<i32>(2147483647i & select(-2147483647i, -2147483647i, true), ~(-var_1.b.b) | -32238i, arg_1), global2.c, global2.b);
    global4 = global2.c.a;
    let var_2 = vec3<u32>(~(~reverseBits(1u)), func_1(Struct_5(global2.b, ~select(global2.c.b, vec4<u32>(global2.b.a, 1u, arg_0, 23173u), global3.x), true, global0.xw)), _wgslsmith_clamp_u32(min(_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, arg_0), _wgslsmith_div_u32(global2.c.a, 11613u)), ~(~global2.c.b.x)), _wgslsmith_dot_vec2_u32(~vec2<u32>(25278u, 1u), (vec2<u32>(global2.b.a, global2.c.b.x) | global2.b.b.ww) & global2.b.b.ww), arg_0 ^ ((arg_0 << (17158u % 32u)) << (max(759u, arg_0) % 32u))));
    return countOneBits(var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec3_u32(~min(reverseBits(global2.b.b.zwz), _wgslsmith_add_vec3_u32(~vec3<u32>(0u, 4294967295u, global2.b.a), _wgslsmith_mult_vec3_u32(vec3<u32>(93359u, global2.b.a, global2.c.b.x), global2.c.b.wwx))), func_2(_wgslsmith_add_u32(_wgslsmith_clamp_u32(abs(global2.c.b.x), func_1(Struct_5(global2.b, global2.c.b, true, global0.zx)), 27859u), _wgslsmith_add_u32(_wgslsmith_div_u32(48444u, global2.c.a), _wgslsmith_clamp_u32(global2.c.b.x, global2.c.b.x, global2.c.b.x))), _wgslsmith_div_i32(global2.b.d, 2147483647i), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(global2.a.yx >> (global2.c.b.yy % vec2<u32>(32u)), vec2<i32>(u_input.b, -1i)), _wgslsmith_sub_vec2_i32(global2.a.yz, _wgslsmith_mod_vec2_i32(vec2<i32>(-33243i, global2.c.d), global2.a.zy)))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(floor(1279f)), _wgslsmith_f_op_f32(777f + _wgslsmith_f_op_f32(global0.x * global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(max(global0.x, 1221f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1331f - global0.x))))));
    let var_1 = Struct_5(Struct_1(4294967295u, ~vec4<u32>(_wgslsmith_mult_u32(44787u, 0u), 999u & var_0.x, global2.c.b.x | 0u, global2.c.b.x), global3.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(global2.a.x, global2.b.d), max(select(global2.a.zy, global2.a.xx, vec2<bool>(global2.b.c, true)), vec2<i32>(-33880i, u_input.a)))), abs(global2.b.b), !global3.x, vec2<f32>(-109f, global0.x));
    var_0 = var_1.b.zxz;
    var var_2 = _wgslsmith_mod_vec3_i32(~firstLeadingBit(~firstLeadingBit(vec3<i32>(90985i, var_1.a.d, var_1.a.d))), reverseBits(global2.a));
    var var_3 = vec4<bool>(!(!var_1.a.c) != !global3.x, _wgslsmith_clamp_u32(~func_1(var_1), var_0.x, global2.b.b.x) > max(_wgslsmith_add_u32(~0u, _wgslsmith_div_u32(global2.b.b.x, 4294967295u)), global2.c.a), !any(select(!vec3<bool>(true, false, var_1.a.c), vec3<bool>(global3.x, false, true), global3.x && global3.x)), global3.x);
    let var_4 = var_1.a.a;
    let var_5 = var_1;
    global0 = vec4<f32>(global0.x, _wgslsmith_div_f32(-410f, _wgslsmith_f_op_f32(-864f * var_1.d.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_5.d.x, _wgslsmith_f_op_f32(2860f * _wgslsmith_f_op_f32(-var_5.d.x))) * -339f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 263f))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-_wgslsmith_clamp_vec2_i32(vec2<i32>(69592i, u_input.b), ~global2.a.xy, abs(var_2.zy))));
}

