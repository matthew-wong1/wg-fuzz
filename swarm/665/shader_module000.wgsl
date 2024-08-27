struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_1,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_4, 20>;

var<private> global2: array<Struct_1, 3>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_4) -> bool {
    global2 = array<Struct_1, 3>();
    return !(!(!arg_0.e.x));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> f32 {
    global2 = array<Struct_1, 3>();
    global2 = array<Struct_1, 3>();
    global2 = array<Struct_1, 3>();
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global0.xwz - vec3<f32>(arg_0.c, -420f, global0.x))));
    return 338f;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: i32) -> vec4<bool> {
    let var_0 = !select(vec3<bool>(false, false, true), arg_2, func_2(global1[_wgslsmith_index_u32(~4294967295u & (arg_1.c.x >> (u_input.c.x % 32u)), 20u)]));
    var var_1 = arg_0.a;
    var var_2 = vec2<bool>(arg_1.a != true, var_0.x);
    var var_3 = -_wgslsmith_div_vec3_i32((~vec3<i32>(0i, -4114i, -2147483647i) >> (~vec3<u32>(63243u, arg_0.c.x, arg_0.c.x) % vec3<u32>(32u))) & (_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -2147483647i, -1i), vec3<i32>(-2147483647i, -1i, 2147483647i)) | vec3<i32>(u_input.d, arg_3, 49561i)), abs(abs(vec3<i32>(u_input.b, 2147483647i, -2147483647i)) | firstLeadingBit(vec3<i32>(u_input.d, arg_3, u_input.d))));
    var var_4 = _wgslsmith_div_f32(-1973f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -122f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1034f))));
    return select(select(select(vec4<bool>(all(vec4<bool>(true, true, true, arg_0.a)), true, arg_0.a, false), !(!vec4<bool>(false, false, true, var_0.x)), !(false && arg_2.x)), !vec4<bool>(true, true, any(vec2<bool>(false, arg_1.a)), false), !(!(!arg_0.a))), select(select(vec4<bool>(arg_2.x, all(arg_2.xy), var_2.x, !var_0.x), !(!vec4<bool>(false, true, var_2.x, arg_1.a)), !all(vec2<bool>(true, false))), select(!(!vec4<bool>(true, var_2.x, false, var_2.x)), select(!vec4<bool>(var_0.x, false, false, arg_2.x), select(vec4<bool>(arg_0.a, true, false, false), vec4<bool>(var_0.x, arg_1.a, false, arg_2.x), vec4<bool>(true, false, arg_0.a, arg_1.a)), !vec4<bool>(true, arg_0.a, true, true)), vec4<bool>(true, true, !var_2.x, arg_2.x)), false), arg_0.a);
}

fn func_1() -> StorageBuffer {
    global1 = array<Struct_4, 20>();
    global1 = array<Struct_4, 20>();
    var var_0 = Struct_3(Struct_2(func_2(global1[_wgslsmith_index_u32(min(82369u & u_input.c.x, 0u << (u_input.c.x % 32u)), 20u)]), _wgslsmith_f_op_f32(-global0.x), u_input.c.xwz), select(vec4<bool>(true, !any(vec4<bool>(true, true, true, false)), true, all(vec3<bool>(true, true, true))), func_4(Struct_2(true, _wgslsmith_f_op_f32(func_3(Struct_1(vec3<i32>(u_input.b, u_input.a, u_input.b), u_input.c.x, 2270f, -1i, vec2<bool>(false, true)), 0i)), ~u_input.c.xyz), Struct_2(false, _wgslsmith_f_op_f32(-global0.x), u_input.c.yzz & vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), vec3<bool>(u_input.a > u_input.a, func_2(Struct_4(vec4<f32>(global0.x, -1000f, -838f, 291f), vec4<bool>(true, false, false, false), vec4<f32>(global0.x, -1000f, -401f, -1000f), vec3<i32>(2147483647i, 0i, u_input.b), vec4<bool>(true, false, true, true))), true), (u_input.d & u_input.a) ^ ~0i), ~u_input.d <= -55719i), Struct_1(_wgslsmith_mod_vec3_i32(~(vec3<i32>(u_input.d, u_input.b, 2147483647i) << (u_input.c.zwy % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(select(vec3<i32>(u_input.d, 0i, u_input.b), vec3<i32>(2147483647i, u_input.d, 33135i), true), vec3<i32>(u_input.a, u_input.d, 63651i) >> (u_input.c.xzz % vec3<u32>(32u)))), u_input.c.x, global0.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, 0i), vec2<i32>(-2147483647i, _wgslsmith_clamp_i32(-1i, 2147483647i, u_input.a))), select(vec2<bool>(true, all(vec4<bool>(true, true, false, true))), func_4(Struct_2(false, -622f, vec3<u32>(0u, 1u, u_input.c.x)), Struct_2(true, global0.x, vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), func_4(Struct_2(true, -1856f, u_input.c.zxy), Struct_2(true, 1115f, u_input.c.yzx), vec3<bool>(true, false, true), 8068i).wyx, countOneBits(19723i)).yw, false)), vec2<bool>(select(false, all(vec2<bool>(true, true)), false), func_4(Struct_2(any(vec4<bool>(true, true, false, true)), global0.x, vec3<u32>(65359u, 0u, u_input.c.x)), Struct_2(func_2(Struct_4(vec4<f32>(global0.x, global0.x, -193f, -382f), vec4<bool>(true, true, true, true), vec4<f32>(312f, 337f, 1622f, -866f), vec3<i32>(u_input.a, u_input.b, u_input.a), vec4<bool>(true, true, true, true))), global0.x, select(u_input.c.zwy, vec3<u32>(u_input.c.x, 29328u, u_input.c.x), vec3<bool>(true, false, true))), vec3<bool>(true, true, true), u_input.d).x), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(1u, u_input.c.x, u_input.c.x, u_input.c.x)) << (_wgslsmith_add_vec4_u32(u_input.c, u_input.c) % vec4<u32>(32u)), u_input.c), u_input.c.x, ~(~26957u)), 3u)]);
    var var_1 = Struct_2(_wgslsmith_sub_u32(805u, ~u_input.c.x) < u_input.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(553f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global0.x))))), reverseBits(vec3<u32>(_wgslsmith_mod_u32(firstLeadingBit(1276u), ~var_0.e.b), _wgslsmith_add_u32(_wgslsmith_clamp_u32(54813u, var_0.c.b, 3296u), 58884u), u_input.c.x)));
    var var_2 = Struct_3(Struct_2(any(vec4<bool>(!var_1.a, true, var_1.a, true)), var_0.a.b, var_1.c), !vec4<bool>(var_1.a & true, var_1.a, _wgslsmith_mod_i32(-2147483647i, -11699i) <= (1i | u_input.b), false), Struct_1(vec3<i32>(abs(_wgslsmith_sub_i32(u_input.a, 22473i)), -(~u_input.a), u_input.b), ~max(countOneBits(11341u), u_input.c.x), global0.x, max(-select(0i, -1i, false), ~(~(-68496i))), !vec2<bool>(all(var_0.b.xy), true)), !func_4(Struct_2(false, -960f, var_0.a.c), Struct_2(true, -2109f, u_input.c.yyy), select(func_4(var_0.a, var_0.a, vec3<bool>(true, true, false), 2147483647i).ywz, func_4(var_0.a, var_0.a, var_0.b.wxz, u_input.a).ywx, var_0.b.yxz), _wgslsmith_div_i32(var_0.e.a.x, -2147483647i | u_input.a)).ww, var_0.c);
    return StorageBuffer(vec2<i32>(_wgslsmith_sub_i32(80529i, firstTrailingBit(u_input.a)), -1i), ~vec4<i32>(max(abs(var_2.e.d), abs(var_2.c.a.x)), _wgslsmith_add_i32(u_input.d, i32(-1i) * -1i), ~var_0.c.a.x, _wgslsmith_mod_i32(-1i, u_input.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(var_0.e.a, var_2.c.a)), firstLeadingBit(31682i), var_0.e.d, -(~6699i)), ~max(vec4<i32>(-1i, -5454i, -103i, 2147483647i), vec4<i32>(2147483647i, var_0.e.d, var_2.c.a.x, var_0.c.d))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!all(vec2<bool>(false, true)), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(713f, global0.x, true))), true))), ~(~u_input.c.wyz));
    var var_1 = var_0;
    var var_2 = global1[_wgslsmith_index_u32(44891u, 20u)];
    let var_3 = var_1.b;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-2309f, -1524f, -1038f, var_2.c.x), _wgslsmith_f_op_vec4_f32(exp2(var_2.a))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1268f), -1703f, var_0.b, _wgslsmith_f_op_f32(min(1222f, var_2.c.x))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(148f - global0.x)), -855f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b, global0.x))), _wgslsmith_f_op_f32(sign(598f))) + vec4<f32>(global0.x, var_1.b, _wgslsmith_div_f32(var_1.b, -578f), var_0.b)));
    global0 = var_2.c;
    let var_4 = 1u;
    let var_5 = global2[_wgslsmith_index_u32(var_0.c.x, 3u)];
    var var_6 = 1205f;
    let x = u_input.a;
    s_output = func_1();
}

