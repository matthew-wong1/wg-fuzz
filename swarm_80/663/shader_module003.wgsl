struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32;

var<private> global2: array<vec2<f32>, 11> = array<vec2<f32>, 11>(vec2<f32>(-245f, -319f), vec2<f32>(-1170f, -1346f), vec2<f32>(-1000f, -921f), vec2<f32>(-1411f, -626f), vec2<f32>(-381f, 718f), vec2<f32>(1000f, 1408f), vec2<f32>(555f, 552f), vec2<f32>(-458f, 974f), vec2<f32>(1439f, 1661f), vec2<f32>(-1538f, -574f), vec2<f32>(314f, 134f));

var<private> global3: vec4<f32> = vec4<f32>(-654f, 905f, 659f, -1000f);

var<private> global4: array<Struct_2, 24>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec4<bool> {
    var var_0 = select(!global0.a.x, true, any(!vec4<bool>(!global0.a.x, true, !global0.a.x, !global0.a.x)));
    var var_1 = Struct_2(Struct_1(select(vec4<bool>(global0.a.x, false, all(vec2<bool>(global0.a.x, true)), 64506u >= global0.b.x), global0.a, !select(false, false, global0.a.x)), firstTrailingBit(abs(vec3<u32>(4294967295u, 27253u, 24016u))), ~global0.b.xy));
    var var_2 = all(!(!vec4<bool>(var_1.a.a.x, var_1.a.a.x, var_1.a.a.x, false))) || (123276u >= _wgslsmith_mult_u32(4584u, 4751u >> (_wgslsmith_mult_u32(68269u, global0.c.x) % 32u)));
    global3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global3.x, global3.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3.x * -1722f))), 1f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1472f, -1014f, -241f, 117f) - vec4<f32>(225f, global3.x, -252f, global3.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-2017f, 116f, 1892f, 1000f), vec4<f32>(global3.x, global3.x, global3.x, 120f)))))));
    global2 = array<vec2<f32>, 11>();
    return !vec4<bool>(any(select(select(vec2<bool>(var_1.a.a.x, global0.a.x), vec2<bool>(var_1.a.a.x, var_1.a.a.x), vec2<bool>(var_1.a.a.x, false)), select(var_1.a.a.yw, global0.a.xz, global0.a.ww), select(vec2<bool>(false, global0.a.x), var_1.a.a.ww, true))), !var_1.a.a.x, true, select(global0.a.x, var_1.a.a.x, true) || var_1.a.a.x);
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, _wgslsmith_f_op_f32(sign(443f))) - _wgslsmith_f_op_vec2_f32(-global3.zx)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1744f, _wgslsmith_f_op_f32(-var_0.x))));
    var var_2 = Struct_1(func_3(), reverseBits(firstTrailingBit(arg_0)), ~vec2<u32>(21267u, firstTrailingBit(_wgslsmith_sub_u32(arg_0.x, global0.c.x))));
    var var_3 = -(_wgslsmith_add_vec4_i32(abs(vec4<i32>(-1i, u_input.b, u_input.a.x, u_input.a.x)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.c.x, 58570u, 0u, 0u), vec4<u32>(arg_0.x, arg_0.x, 1149u, global0.c.x)) % vec4<u32>(32u)), ~select(u_input.a, vec4<i32>(0i, 54268i, u_input.b, 0i), true)) ^ u_input.a);
    var var_4 = Struct_2(Struct_1(vec4<bool>(true, global0.a.x, any(select(var_2.a, var_2.a, true)), (var_2.a.x || false) || any(global0.a)), _wgslsmith_add_vec3_u32(var_2.b, select(var_2.b, vec3<u32>(0u, arg_0.x, global0.b.x), global0.a.x) ^ _wgslsmith_clamp_vec3_u32(var_2.b, arg_0, vec3<u32>(39104u, 0u, global0.c.x))), ~vec2<u32>(~0u, _wgslsmith_sub_u32(var_2.b.x, global0.b.x))));
    return Struct_1(!global0.a, ~firstTrailingBit(arg_0), ~var_4.a.b.zx);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global2 = array<vec2<f32>, 11>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, -946f)));
    global4 = array<Struct_2, 24>();
    let var_2 = select(!select(select(!vec2<bool>(global0.a.x, false), select(global0.a.zx, vec2<bool>(false, false), global0.a.xx), vec2<bool>(false, global0.a.x)), !global0.a.wy, select(global0.a.yy, global0.a.xz, true)), select(!vec2<bool>(true || global0.a.x, true), select(!(!vec2<bool>(global0.a.x, global0.a.x)), !global0.a.zz, !global0.a.x), false), all(!(!vec2<bool>(global0.a.x, false))));
    return func_2(global0.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec4<f32>) -> f32 {
    return 1387f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<u32>(60077u, 1u);
    var var_1 = !(!(!vec2<bool>(global0.a.x, false)));
    global3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f))), _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1681f)), global3.x))), _wgslsmith_f_op_f32(func_4(func_1(), Struct_2(func_2(vec3<u32>(68476u, var_0.x, 8872u))), firstTrailingBit(_wgslsmith_add_vec3_u32(global0.b, global0.b)), vec4<f32>(-316f, 1495f, global3.x, _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(-global3.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(global3.x + global3.x)) * _wgslsmith_f_op_f32(1339f + _wgslsmith_f_op_f32(global3.x + global3.x)))));
    var_1 = vec2<bool>(select(true, all(global0.a.zzy), global0.a.x), var_1.x & (global0.a.x & true));
    global1 = u_input.a.x;
    var var_2 = Struct_1(func_1().a, ~(~(~(~global0.b))), global0.b.yy << (select(_wgslsmith_div_vec2_u32(global0.c, global0.c) >> (_wgslsmith_add_vec2_u32(global0.b.yz, vec2<u32>(1u, global0.b.x)) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(global0.b.xz, vec2<u32>(9080u, 1u)), global0.a.x) % vec2<u32>(32u)));
    let var_3 = _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec2_u32(~vec2<u32>(46837u, global0.c.x), var_2.b.zz)) >> (var_0.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~select(abs(~vec4<u32>(137252u, 1u, var_2.b.x, 4294967295u)), max(~vec4<u32>(var_3, 1u, 91471u, 830u), ~vec4<u32>(0u, var_0.x, 40017u, var_2.b.x)), !vec4<bool>(true, var_2.a.x, var_2.a.x, var_2.a.x)), abs(global0.c.x), select(u_input.a.wwz, _wgslsmith_sub_vec3_i32(u_input.a.zzz, _wgslsmith_mod_vec3_i32(u_input.a.yzy, vec3<i32>(u_input.a.x, u_input.a.x, 0i))), 617f != global3.x));
}

