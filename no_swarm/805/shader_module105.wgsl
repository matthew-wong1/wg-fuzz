struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(i32(-2147483648), vec3<i32>(-1i, -7674i, 1i), vec3<f32>(-957f, -949f, 1249f), 1u, i32(-2147483648));

var<private> global1: i32;

var<private> global2: vec4<f32>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: i32) -> bool {
    return !(!(~countOneBits(global0.d) >= 1u));
}

fn func_3() -> bool {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, _wgslsmith_clamp_i32(-5543i, 1i, -57137i), abs(30398i)) ^ (firstTrailingBit(vec4<i32>(21909i, -6934i, -2147483647i, 4419i)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.b.x, u_input.a.x, -25494i, -2147483647i), vec4<i32>(-1i, 11449i, -1i, u_input.a.x), vec4<i32>(5448i, -23148i, -47266i, u_input.c))), reverseBits(select(vec4<i32>(2147483647i, u_input.c, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, u_input.c, -3795i, u_input.c), vec4<bool>(false, true, true, true)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 8505u, 29093u, 0u), vec4<u32>(global0.d, global0.d, 4294967295u, u_input.b.x)) % vec4<u32>(32u)))), _wgslsmith_clamp_vec3_i32(global0.b, _wgslsmith_sub_vec3_i32(vec3<i32>(global0.a, ~(-1i), _wgslsmith_mult_i32(u_input.a.x, -16299i)), global0.b), _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(global0.b.x, global0.a, global0.b.x)), ~vec3<i32>(u_input.c, u_input.c, global0.e), -vec3<i32>(-1i, 0i, -38354i)) | ~vec3<i32>(0i, u_input.c, u_input.a.x)), _wgslsmith_f_op_vec3_f32(global2.xzx - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 354f, -1483f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 1000f, global2.x)))), ~(~_wgslsmith_add_u32(~0u, 40594u << (u_input.b.x % 32u))), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a, _wgslsmith_mod_i32(-9178i, -4205i), -1758i, 2147483647i), ~(~abs(vec4<i32>(1506i, 1i, -2147483647i, global0.e)))));
    var var_1 = ~select(vec4<i32>(-(var_0.e << (u_input.b.x % 32u)), ~firstLeadingBit(global0.e), ~43145i, u_input.c), vec4<i32>(_wgslsmith_clamp_i32(0i, global0.e, -u_input.a.x), global0.b.x, -15198i, var_0.a), vec4<bool>(all(vec4<bool>(false, true, true, true)) || all(vec2<bool>(true, false)), _wgslsmith_f_op_f32(-573f + global2.x) <= _wgslsmith_f_op_f32(global0.c.x - 1142f), any(vec2<bool>(false, true)) == true, select(global0.d > 1u, true, true)));
    let var_2 = Struct_1(-2147483647i, var_0.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global2.zwy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, var_0.c.x, global2.x)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(global2.xwx, vec3<f32>(global0.c.x, -1000f, global2.x))))))), ~_wgslsmith_sub_u32(max(firstLeadingBit(var_0.d), 1u), _wgslsmith_mod_u32(~u_input.b.x, 1u)), min(var_0.e, _wgslsmith_dot_vec3_i32(-global0.b, ~vec3<i32>(global0.a, -8241i, -80023i))));
    var var_3 = true;
    global0 = Struct_1(2147483647i, countOneBits(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(global0.b.yx, vec2<i32>(24663i, 1i)), -global0.a), ~(-32993i), u_input.c)), _wgslsmith_f_op_vec3_f32(-var_2.c), 10284u, 2147483647i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2037f)) * _wgslsmith_f_op_f32(f32(-1f) * -2285f)) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.c.x, -311f)))), _wgslsmith_f_op_f32(-574f - -540f));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = select(vec3<bool>(false, func_1(u_input.c << (_wgslsmith_div_u32(u_input.b.x, u_input.b.x) % 32u)), all(vec3<bool>(true, true, true)) & true), !vec3<bool>(func_3(), any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true))), true), !(!all(vec3<bool>(true, true, false))));
    global0 = Struct_1(i32(-1i) * -_wgslsmith_sub_i32(global0.e, firstTrailingBit(-63658i)), vec3<i32>(_wgslsmith_mod_i32(-33409i, -global0.a) << (u_input.b.x % 32u), min(_wgslsmith_mult_i32(u_input.a.x | 34770i, -20960i & global0.b.x), -10480i), 17309i), _wgslsmith_f_op_vec3_f32(-global2.xxz), 18576u, _wgslsmith_mult_i32(_wgslsmith_mod_i32(0i, ~(u_input.a.x | 30306i)), select(-1i, firstLeadingBit(1i), var_0.x)));
    var var_1 = vec2<f32>(global0.c.x, global0.c.x);
    var var_2 = min(30022i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(min(global0.a, 52049i), 2147483647i), firstLeadingBit(global0.a | u_input.c))) >> (32583u % 32u);
    let var_3 = min(reverseBits(vec4<i32>(global0.a, _wgslsmith_mod_i32(u_input.a.x, 0i), ~u_input.a.x, 1i) >> (max(vec4<u32>(arg_0, 47906u, global0.d, 53309u), _wgslsmith_mod_vec4_u32(vec4<u32>(71431u, 659u, u_input.b.x, 111264u), vec4<u32>(u_input.b.x, arg_0, 0u, 0u))) % vec4<u32>(32u))), -(vec4<i32>(-16540i, -33583i << (1u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-22878i, 13843i, u_input.c, u_input.a.x), vec4<i32>(31199i, 0i, global0.b.x, u_input.c)), u_input.a.x) | _wgslsmith_sub_vec4_i32(~vec4<i32>(-2147483647i, 2147483647i, global0.b.x, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(-3238i, -13377i, u_input.c, 55111i), vec4<i32>(-24502i, 21630i, -2147483647i, -11951i)))));
    return Struct_1(global0.b.x, _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-31336i, firstTrailingBit(29939i), 1i), countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-15839i, 2147483647i, u_input.c), u_input.a)), select(u_input.a, var_3.yxx, !vec3<bool>(true, true, var_0.x))), u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.yxw)), arg_0 & global0.d, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!vec3<bool>(true, any(vec3<bool>(false, true, true)), func_1(u_input.c))));
    var var_1 = Struct_1(25131i, vec3<i32>(~0i, ~global0.b.x, countOneBits(_wgslsmith_clamp_i32(31488i, global0.e, -22876i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(1f)), -1201f, _wgslsmith_f_op_f32(f32(-1f) * -170f))), ~(~(global0.d ^ 23336u)), u_input.a.x);
    var var_2 = func_2(select(var_1.d, 4294967295u, true && all(vec4<bool>(var_0.x, false, true, var_0.x))));
    let var_3 = global0.b;
    global1 = var_3.x;
    let var_4 = func_2(8335u);
    let var_5 = func_2(global0.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(u_input.a.yx, var_5.b.zz), var_4.b.xz, global2.x);
}

