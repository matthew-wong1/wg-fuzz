struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec4<i32>;

var<private> global2: array<f32, 30>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec2<u32> {
    global1 = vec4<i32>(global1.x, -_wgslsmith_sub_i32(-max(global1.x, global1.x), _wgslsmith_dot_vec2_i32(~global1.zx, max(global1.xz, vec2<i32>(1i, global1.x)))), abs(~max(2147483647i, global1.x)) << ((_wgslsmith_mod_u32(1u, firstTrailingBit(u_input.a.x)) << (19311u % 32u)) % 32u), ~2147483647i);
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~u_input.a.x, 30u)]) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(u_input.a.x, 30u)])))) != 211f, vec2<u32>(~0u, firstTrailingBit(_wgslsmith_mod_u32(u_input.a.x, reverseBits(4294967295u)))));
    let var_1 = any(select(select(select(vec2<bool>(var_0.a, var_0.a), select(global0.xx, global0.xz, vec2<bool>(false, true)), vec2<bool>(true, global0.x)), !select(vec2<bool>(true, var_0.a), vec2<bool>(global0.x, true), global0.yz), select(global0.yz, select(global0.xz, vec2<bool>(var_0.a, true), vec2<bool>(false, false)), var_0.b.x > var_0.b.x)), vec2<bool>(all(vec2<bool>(true, global0.x)), var_0.a), !((-1i >> (1u % 32u)) <= _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, 0i, -2147483647i, -2147483647i), vec4<i32>(global1.x, 0i, global1.x, global1.x)))));
    var var_2 = select(!select(vec4<bool>(any(vec4<bool>(false, false, var_0.a, var_1)), var_1, true, var_0.a), vec4<bool>(all(vec4<bool>(true, var_0.a, true, var_0.a)), var_0.b.x >= 84027u, all(global0.xz), !global0.x), vec4<bool>(true, var_0.a, any(vec3<bool>(var_1, true, false)), false)), vec4<bool>(true, !var_1, true, _wgslsmith_sub_i32(1i, global1.x << (73736u % 32u)) >= (_wgslsmith_sub_i32(global1.x, global1.x) >> ((var_0.b.x | u_input.a.x) % 32u))), select(vec4<bool>(global0.x, global0.x, true, var_1), vec4<bool>(true, true, global0.x, !var_0.a), vec4<bool>(all(select(vec2<bool>(false, var_0.a), vec2<bool>(var_1, var_0.a), true)), any(select(vec3<bool>(false, var_1, true), vec3<bool>(var_0.a, global0.x, global0.x), var_0.a)), all(select(global0.yy, global0.yy, global0.xy)), !(false & var_1))));
    global2 = array<f32, 30>();
    return vec2<u32>(~(~(u_input.a.x << (var_0.b.x % 32u)) | u_input.a.x), _wgslsmith_clamp_u32(~0u, var_0.b.x, u_input.a.x) >> (u_input.a.x % 32u));
}

fn func_2() -> Struct_3 {
    global0 = select(select(select(!vec3<bool>(global0.x, false, false), vec3<bool>(global0.x, global0.x, global0.x), false), vec3<bool>(max(global1.x, -2147483647i) < countOneBits(global1.x), !global0.x, u_input.a.x >= (64679u | u_input.a.x)), !(!(!vec3<bool>(global0.x, true, true)))), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(u_input.a.x, 30u)])), 293f) < -220f, all(vec3<bool>(global1.x > global1.x, !global0.x, global0.x || global0.x))));
    var var_0 = Struct_1(any(!vec3<bool>(global0.x, global0.x || global0.x, !global0.x)), func_3());
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(~(u_input.a.x | 72269u), 30u)], _wgslsmith_div_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(1u, 30u)], _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(14653u, 30u)]))), global2[_wgslsmith_index_u32(countOneBits(u_input.a.x), 30u)]), (i32(-1i) * -3430i) >= _wgslsmith_add_i32(31449i, global1.x))));
    let var_2 = -987f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -123f));
    return Struct_3(Struct_1(_wgslsmith_add_u32(abs(0u), 1u) <= var_0.b.x, vec2<u32>(_wgslsmith_div_u32(countOneBits(0u), var_0.b.x), ~_wgslsmith_mod_u32(u_input.a.x, 16804u))), -max(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, global1.x, global1.x, global1.x), vec4<i32>(44191i, global1.x, global1.x, global1.x)) & vec4<i32>(0i, global1.x, 2147483647i, global1.x), max(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, global1.x, global1.x, global1.x), vec4<i32>(63036i, 26986i, global1.x, global1.x)), min(vec4<i32>(global1.x, global1.x, global1.x, global1.x), vec4<i32>(global1.x, -11014i, 1448i, 16467i)))), Struct_2(Struct_1(all(select(vec4<bool>(var_0.a, var_0.a, var_0.a, false), vec4<bool>(false, var_0.a, global0.x, global0.x), var_0.a)), vec2<u32>(51654u, ~u_input.a.x)), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_2)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-265f + global2[_wgslsmith_index_u32(8069u, 30u)])))), Struct_1(select(true, !global0.x, global0.x), var_0.b), Struct_1(all(!global0.zy), vec2<u32>(u_input.a.x << (u_input.a.x % 32u), var_0.b.x)), global0.yz));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec2<bool>) -> Struct_1 {
    global1 = -_wgslsmith_add_vec4_i32(vec4<i32>(~0i, -14733i, arg_1.b.x, -15355i >> (~u_input.a.x % 32u)), vec4<i32>(~firstLeadingBit(arg_1.b.x), -min(global1.x, -2147483647i), ~1i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(global1.wzx, vec3<i32>(global1.x, arg_1.b.x, arg_1.b.x)), -2147483647i, ~3451i)));
    var var_0 = _wgslsmith_add_vec4_i32(arg_1.b, vec4<i32>(global1.x, reverseBits(_wgslsmith_dot_vec4_i32(arg_1.b, arg_1.b)), _wgslsmith_mult_i32(global1.x, ~arg_1.b.x), -_wgslsmith_mult_i32(global1.x, global1.x)) & _wgslsmith_mod_vec4_i32(arg_1.b, ~(-arg_1.b)));
    var var_1 = -global1.xw;
    let var_2 = func_2().c.c;
    var var_3 = arg_1.c.b;
    return arg_1.c.a;
}

fn func_1(arg_0: f32) -> Struct_3 {
    return Struct_3(func_4(false, func_2(), global0.yx), _wgslsmith_mult_vec4_i32(~min(vec4<i32>(global1.x, global1.x, global1.x, global1.x) >> (vec4<u32>(33173u, 0u, 91104u, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(global1.x, 0i, global1.x, global1.x), vec4<i32>(global1.x, 68119i, 4706i, 1i))), vec4<i32>(global1.x ^ global1.x, i32(-1i) * -87677i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, 1i, global1.x, -2147483647i), vec4<i32>(global1.x, 0i, 1i, global1.x)), firstLeadingBit(~global1.x))), Struct_2(Struct_1(59546u <= ~u_input.a.x, ~_wgslsmith_mod_vec2_u32(u_input.a.xx, vec2<u32>(u_input.a.x, u_input.a.x))), vec2<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(5902u, 30u)] - 1742f), _wgslsmith_f_op_f32(round(arg_0))), func_2().a, func_4(true, func_2(), global0.zy), select(global0.zx, global0.yz, all(vec4<bool>(global0.x, true, global0.x, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.x;
    var var_1 = all(global0.yx);
    global2 = array<f32, 30>();
    global0 = !select(vec3<bool>(!(global2[_wgslsmith_index_u32(u_input.a.x, 30u)] < -1121f), false, !global0.x), !select(!vec3<bool>(global0.x, false, global0.x), select(vec3<bool>(true, global0.x, true), vec3<bool>(global0.x, global0.x, true), false), select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, false, true))), vec3<bool>(true, false | (global0.x || true), any(vec4<bool>(global0.x, false, false, true))));
    global2 = array<f32, 30>();
    global0 = vec3<bool>(false, any(select(select(vec3<bool>(false, global0.x, global0.x), select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, true, true)), vec3<bool>(global0.x, false, global0.x)), !vec3<bool>(true, false, global0.x), !vec3<bool>(global0.x, global0.x, true))), global0.x);
    let var_2 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -1085f));
    var var_3 = var_2.c.d;
    let var_4 = Struct_1(_wgslsmith_clamp_i32(_wgslsmith_add_i32(1i, _wgslsmith_add_i32(-41597i, 1i)), ~(-48494i), var_2.b.x) < ~(-2147483647i), ~(~vec2<u32>(55030u, ~1u)));
    let x = u_input.a;
    s_output = StorageBuffer(max(abs(var_2.b.wyw), firstTrailingBit(global1.yzw)), var_4.b.x, vec4<u32>(u_input.a.x, var_2.a.b.x ^ 48877u, u_input.a.x, var_2.a.b.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-418f)), 1837f) * _wgslsmith_f_op_f32(max(var_2.c.b.x, _wgslsmith_f_op_f32(1237f * 1000f)))))), -1i);
}

