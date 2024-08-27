struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: f32,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: u32,
    d: u32,
}

struct Struct_5 {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26>;

var<private> global1: vec3<bool>;

var<private> global2: f32 = -797f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1123f)) - 1044f))), _wgslsmith_f_op_f32(-823f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1111f)))), 113f);
    return _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_3, arg_3: vec2<f32>) -> Struct_5 {
    global2 = _wgslsmith_f_op_f32(1900f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(532f)) - -895f)), _wgslsmith_f_op_f32(-800f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))))));
    var var_0 = Struct_1(!select(vec4<bool>(true, true, !arg_1, false), vec4<bool>(true, all(vec2<bool>(arg_2.b.x, false)), false, arg_2.b.x == arg_2.a), !(arg_1 & false)));
    let var_1 = vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, -1479f)) + _wgslsmith_f_op_f32(-arg_2.e)) * 620f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1268f)), any(select(var_0.a, !vec4<bool>(arg_2.a, arg_2.b.x, global1.x, arg_1), true)), false, all(!select(!vec2<bool>(arg_1, arg_2.b.x), !vec2<bool>(global1.x, arg_2.b.x), arg_2.b)));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.wyz - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, arg_0.x, -646f))) - arg_0.zzy), arg_0.zwx, select(select(vec3<bool>(true, !var_0.a.x, var_1.x), !(!var_1.yzw), all(var_1)), var_1.zwz, select(select(var_1.xyz, var_0.a.zzy, !arg_2.a), vec3<bool>(all(var_1.zzz), true, arg_2.b.x), ~arg_2.c.x > ~arg_2.d.x))));
    return Struct_5(0u, -min(-vec3<i32>(55057i, -1i, 2147483647i), vec3<i32>(1i, 1i, 1i)) & vec3<i32>(reverseBits(-22982i) << (abs(u_input.a.x) % 32u), _wgslsmith_sub_i32(12279i, _wgslsmith_mult_i32(-3464i, -13307i)), 1i), ~u_input.a.zwz, Struct_1(var_0.a), ~51130u);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5) -> bool {
    var var_0 = !select(vec3<bool>(false && select(false, false, arg_1.d.a.x), all(arg_1.d.a.xzw), true), arg_1.d.a.zyy, func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-308f, 813f, -127f, -1328f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-888f, -391f, 1000f, -191f))), arg_0.b, Struct_3(any(global1.yy), !global1.yz, vec3<u32>(arg_1.e, u_input.a.x, 71265u) | vec3<u32>(arg_0.d, 51955u, 0u), ~vec2<u32>(1u, 0u), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec2<f32>(-1101f, -104f)).d.a.wxz);
    var var_1 = arg_1;
    let var_2 = global0[_wgslsmith_index_u32(3620u, 26u)];
    var var_3 = arg_1.b.x;
    var_3 = arg_1.b.x | ~_wgslsmith_mod_i32(abs(_wgslsmith_sub_i32(43369i, var_1.b.x)), abs(min(arg_1.b.x, var_1.b.x)));
    return var_2.a;
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: u32) -> vec2<f32> {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-466f * arg_1)));
    global0 = array<Struct_3, 26>();
    global1 = vec3<bool>(!all(vec3<bool>(!global1.x, true, any(vec3<bool>(global1.x, false, false)))), func_4(Struct_4(select(false, false, global1.x), any(vec3<bool>(true, true, false)), abs(arg_2), 53868u | arg_2), func_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(895f, 688f, 1470f, -551f), vec4<f32>(arg_1, arg_1, arg_1, arg_1))), global1.x, Struct_3(global1.x, global1.xx, vec3<u32>(arg_0, 13184u, 0u), u_input.a.yw, -303f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1, 856f))))) & global1.x, !any(!vec4<bool>(true, global1.x, global1.x, global1.x)));
    global2 = _wgslsmith_f_op_f32(1896f * _wgslsmith_f_op_f32(-arg_1));
    global0 = array<Struct_3, 26>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1, arg_1))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) * vec2<f32>(-318f, arg_1)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -1524f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1051f, arg_1)), vec2<f32>(1f, 1f))))));
}

fn func_5(arg_0: vec2<f32>) -> StorageBuffer {
    let var_0 = Struct_1(!select(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0.x, arg_0.x, 758f) * vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 1000f)), !global1.x, Struct_3(true, vec2<bool>(global1.x, global1.x), u_input.a.xyy, u_input.a.yw, -484f), vec2<f32>(arg_0.x, arg_0.x)).d.a, select(vec4<bool>(global1.x, false, false, true), vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(true, global1.x, false, global1.x)), !func_2(vec4<f32>(arg_0.x, -104f, arg_0.x, -639f), global1.x, global0[_wgslsmith_index_u32(0u, 26u)], vec2<f32>(-1572f, arg_0.x)).d.a));
    let var_1 = 1i;
    var var_2 = !global1.x;
    global1 = !(!var_0.a.wyx);
    let var_3 = var_0;
    return StorageBuffer(max(_wgslsmith_clamp_i32(reverseBits(firstTrailingBit(-36934i)), ~1i, i32(-1i) * -var_1), -(var_1 & var_1) >> (u_input.a.x % 32u)), u_input.a.xx);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(1u, _wgslsmith_f_op_f32(-468f - _wgslsmith_f_op_f32(sign(-1568f))), u_input.a.x))));
}

