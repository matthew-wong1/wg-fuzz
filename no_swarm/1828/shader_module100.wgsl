struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<bool>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: Struct_2,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: bool,
    d: vec2<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9>;

var<private> global1: Struct_3;

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(0u, 32546u), vec2<u32>(4294967295u, 17108u), vec2<u32>(4294967295u, 1599u), vec2<u32>(0u, 27488u), vec2<u32>(1u, 49936u), vec2<u32>(0u, 34574u), vec2<u32>(25516u, 4294967295u), vec2<u32>(34879u, 15451u), vec2<u32>(1u, 27106u), vec2<u32>(35450u, 0u), vec2<u32>(4294967295u, 36767u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 77646u), vec2<u32>(27695u, 0u), vec2<u32>(3149u, 69970u), vec2<u32>(0u, 137598u), vec2<u32>(1u, 2409u), vec2<u32>(117180u, 4294967295u), vec2<u32>(124764u, 1u), vec2<u32>(1u, 1u), vec2<u32>(46943u, 113510u), vec2<u32>(65829u, 1u));

var<private> global4: vec2<f32> = vec2<f32>(764f, -1451f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec4<i32>) -> u32 {
    global1 = Struct_3(vec2<u32>(global1.c.d.x, _wgslsmith_clamp_u32(max(u_input.a.x, 4294967295u), 1u, max(global1.a.x, _wgslsmith_mult_u32(4294967295u, 0u)))), ~vec3<i32>(firstLeadingBit(select(global1.c.a.x, 1i, global1.d.x)), 2147483647i, ~(~arg_0.x)), global1.c, global1.c.b.c);
    let var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(round(global1.c.c.x)), _wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.c.c.ww) + _wgslsmith_f_op_vec2_f32(-global1.c.c.yx))), vec2<f32>(global4.x, global4.x)))));
    global0 = array<bool, 9>();
    global0 = array<bool, 9>();
    global0 = array<bool, 9>();
    return global1.a.x;
}

fn func_4(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: Struct_4) -> vec2<u32> {
    var var_0 = _wgslsmith_mod_vec2_u32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global1.c.d.x, func_3(_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(arg_0.e.b.x, arg_0.a.b.x, 0i, 31822i)), global1.c.a & vec4<i32>(global1.c.a.x, u_input.b.x, arg_1.x, 9312i)))), 23u)], ~(~vec2<u32>(u_input.c, global1.c.d.x) << (global1.a % vec2<u32>(32u))) << (_wgslsmith_div_vec2_u32(countOneBits(~global3[_wgslsmith_index_u32(arg_0.e.c.b.b, 23u)]), vec2<u32>(global1.c.b.b, u_input.c)) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(arg_2.a.c.c.x, -1629f))));
    let var_2 = -(~u_input.b.x);
    global1 = arg_2.e;
    var var_3 = Struct_4(arg_0.e, u_input.a, true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-413f, -445f) * arg_0.e.c.c.zy))), arg_0.a.c.c.xx)) * _wgslsmith_f_op_vec2_f32(arg_0.a.c.c.xz + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -661f))))), Struct_3(firstLeadingBit(vec2<u32>(abs(arg_2.a.c.b.b), 1u)), abs(_wgslsmith_clamp_vec3_i32(select(u_input.b.zzx, vec3<i32>(arg_1.x, arg_1.x, global1.c.b.e), arg_2.c), u_input.b.www, abs(vec3<i32>(u_input.b.x, -504i, 39525i)))), arg_2.e.c, !select(!arg_2.e.c.b.c, select(global1.d, vec3<bool>(false, arg_2.e.c.b.c.x, global0[_wgslsmith_index_u32(u_input.c, 9u)]), vec3<bool>(global1.c.b.c.x, false, global2.x)), arg_0.a.d.x)));
    return arg_2.a.a;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<i32>) -> u32 {
    var var_0 = Struct_1(vec2<u32>(~max(arg_0.b.b, 20389u) ^ ~_wgslsmith_div_u32(0u, 26047u), ~firstLeadingBit(arg_1.b)), 4294967295u, !arg_0.b.c, !vec3<bool>(_wgslsmith_f_op_f32(-global1.c.c.x) == _wgslsmith_f_op_f32(trunc(global1.c.c.x)), global1.c.b.c.x, !(arg_0.a.x >= arg_1.e)), 36639i);
    global1 = Struct_3(func_4(Struct_4(Struct_3(vec2<u32>(u_input.a.x, 1u) << (vec2<u32>(global1.c.b.a.x, global1.a.x) % vec2<u32>(32u)), firstTrailingBit(u_input.b.yxz), global1.c, !vec3<bool>(true, arg_0.b.c.x, false)), vec2<u32>(~0u, func_3(u_input.b)), global1.d.x, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.c.c.x, 101f))), Struct_3(firstLeadingBit(vec2<u32>(var_0.b, 9113u)), vec3<i32>(1i, arg_1.e, u_input.b.x), Struct_2(vec4<i32>(u_input.b.x, u_input.d, global1.c.b.e, -20817i), global1.c.b, vec4<f32>(global1.c.c.x, 183f, 119f, -604f), vec3<u32>(u_input.a.x, var_0.a.x, 34261u)), !arg_0.b.c)), vec2<i32>(max(max(0i, global1.c.a.x), abs(arg_1.e)), arg_0.a.x), Struct_4(Struct_3(~vec2<u32>(33468u, u_input.c), global1.b, Struct_2(global1.c.a, Struct_1(vec2<u32>(arg_1.b, 0u), global1.a.x, arg_0.b.d, vec3<bool>(var_0.c.x, arg_1.c.x, global1.d.x), 45938i), vec4<f32>(arg_0.c.x, global4.x, -2503f, -2361f), arg_0.d), select(arg_0.b.d, global1.c.b.c, var_0.c.x)), firstTrailingBit(reverseBits(arg_1.a)), select(arg_0.b.d.x & false, select(true, false, false), global1.c.c.x > 1000f), vec2<f32>(_wgslsmith_f_op_f32(global4.x * 1167f), _wgslsmith_f_op_f32(f32(-1f) * -285f)), Struct_3(u_input.a, global1.b, global1.c, arg_0.b.d))), u_input.b.zyx, global1.c, select(vec3<bool>(true, true, true), vec3<bool>(_wgslsmith_div_f32(arg_0.c.x, -409f) <= _wgslsmith_div_f32(1031f, global1.c.c.x), all(!vec4<bool>(arg_0.b.c.x, var_0.c.x, arg_0.b.c.x, false)), any(vec4<bool>(var_0.d.x, false, arg_1.d.x, true)) | (global2.x && true)), !select(!arg_0.b.c, arg_0.b.c, global1.d.x)));
    let var_1 = global1.c;
    let var_2 = !vec3<bool>(any(!select(vec4<bool>(global2.x, true, true, global2.x), vec4<bool>(global0[_wgslsmith_index_u32(arg_1.a.x, 9u)], arg_0.b.d.x, true, arg_0.b.d.x), var_1.b.c.x)), false, all(vec4<bool>(!global1.c.b.d.x, arg_0.b.c.x, arg_1.c.x, arg_0.b.c.x)));
    var var_3 = !vec4<bool>(_wgslsmith_f_op_f32(abs(global1.c.c.x)) >= arg_0.c.x, any(!vec4<bool>(true, global0[_wgslsmith_index_u32(49814u, 9u)], var_0.d.x, false)), !any(global1.d.yy), true);
    return 4294967295u;
}

fn func_1() -> u32 {
    global2 = select(global1.c.b.d.zz, vec2<bool>(false, !(0u <= _wgslsmith_add_u32(0u, global1.a.x))), !vec2<bool>(global0[_wgslsmith_index_u32(~12662u, 9u)], false));
    var var_0 = firstTrailingBit(_wgslsmith_clamp_u32(~_wgslsmith_sub_u32(~u_input.c, 0u), 55738u, 10920u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var_0 = _wgslsmith_clamp_u32(global1.c.d.x, ~u_input.c, _wgslsmith_sub_u32(abs(_wgslsmith_clamp_u32(u_input.a.x, abs(1u), max(4294967295u, 20441u))), _wgslsmith_div_u32(~max(4294967295u, 1u), reverseBits(u_input.c))));
    var var_2 = vec4<u32>(~select(u_input.a.x, _wgslsmith_mod_u32(global1.c.d.x, u_input.c) >> (_wgslsmith_dot_vec3_u32(global1.c.d, global1.c.d) % 32u), func_2(global1.c, Struct_1(global1.a, global1.a.x, vec3<bool>(false, false, global1.c.b.d.x), global1.c.b.d, 2147483647i), global1.c.a.zz) < ~u_input.c), ~4294967295u, ~1u, 24806u);
    return ~_wgslsmith_div_u32(u_input.a.x, _wgslsmith_mod_u32(var_2.x, var_2.x) | ~1u);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = global1.c.c.yx;
    global2 = !global1.c.b.c.xz;
    let var_0 = global1.d.xz;
    var var_1 = global1.c.d;
    var_1 = _wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(~global1.c.d.x, abs(global1.c.b.a.x) & (var_1.x >> (61068u % 32u)), ~1u)), global1.c.d, vec3<u32>(func_1(), 79150u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(max(vec3<i32>(global1.c.b.e, u_input.b.x, -2006i), _wgslsmith_mult_vec3_i32(vec3<i32>(-6753i, u_input.d, global1.b.x), vec3<i32>(5828i, global1.b.x, -2147483647i))) << (countOneBits(global1.c.d >> (vec3<u32>(u_input.c, 1u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u)), global1.c.a.xyz), -global1.b.xx);
}

