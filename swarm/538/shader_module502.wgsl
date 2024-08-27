struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3> = array<f32, 3>(770f, 555f, -1044f);

var<private> global1: array<vec3<bool>, 19>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec2<bool> {
    global1 = array<vec3<bool>, 19>();
    global1 = array<vec3<bool>, 19>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.a), 3u)], _wgslsmith_f_op_f32(sign(-986f))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, 48835u), 3u)])) + 479f) * 1351f);
    var var_1 = 0i;
    var var_2 = Struct_2(1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(ceil(var_0))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.a, 3u)])) - 197f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.a, 3u)], _wgslsmith_div_f32(536f, global0[_wgslsmith_index_u32(0u, 3u)]))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 3u)]) - -404f))), select(vec2<bool>(true, true), !select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, false)), all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, false), false)))), vec3<u32>(u_input.a, select(1u, ~u_input.a, false), reverseBits(0u >> (u_input.a % 32u))) | ~(~(vec3<u32>(4294967295u, 52069u, u_input.a) | vec3<u32>(u_input.a, 49007u, 34367u))));
    return select(select(select(var_2.c, vec2<bool>(all(vec4<bool>(true, false, var_2.c.x, var_2.c.x)), var_2.c.x), false), !select(var_2.c, vec2<bool>(var_2.c.x, false), select(var_2.c, var_2.c, false)), var_2.c.x), !(!var_2.c), true);
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: u32) -> vec2<u32> {
    let var_0 = Struct_3(false, Struct_2(-8699i, global0[_wgslsmith_index_u32(~57258u, 3u)], func_3(), ~reverseBits(vec3<u32>(u_input.a, arg_0.x, 45232u))), true, Struct_2(i32(-1i) * -(i32(-1i) * -1126i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-919f))), !vec2<bool>(true, any(vec2<bool>(false, false))), arg_0));
    var var_1 = Struct_3(all(vec2<bool>(var_0.a, var_0.b.c.x)), Struct_2(-abs(var_0.d.a), var_0.b.b, vec2<bool>(var_0.d.c.x, false), ~reverseBits(min(arg_0, var_0.b.d))), var_0.c, Struct_2(-36787i, 1f, var_0.b.c, vec3<u32>(_wgslsmith_div_u32(var_0.d.d.x, ~arg_0.x), arg_0.x, ~abs(arg_0.x))));
    var_1 = Struct_3(any(select(!select(vec4<bool>(true, true, var_0.d.c.x, var_1.b.c.x), vec4<bool>(true, false, var_1.d.c.x, false), var_0.d.c.x), !select(vec4<bool>(false, var_0.a, true, true), vec4<bool>(var_0.c, var_1.a, var_0.d.c.x, true), vec4<bool>(var_0.d.c.x, true, false, var_1.d.c.x)), vec4<bool>(false, true, false, !var_0.d.c.x))), var_0.b, any(vec3<bool>(global0[_wgslsmith_index_u32(~0u, 3u)] >= _wgslsmith_f_op_f32(859f + var_1.b.b), true, true || func_3().x)), Struct_2(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.b.a, arg_1, var_0.b.a, -1i), _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(var_0.b.a, -2147483647i, 0i, var_1.d.a)), vec4<i32>(var_0.d.a, var_0.d.a, 1i, -1i))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(arg_0.x, 3u)], 1277f, var_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.b.b))))), !var_0.d.c, vec3<u32>(var_0.b.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.d.x, u_input.a), vec2<u32>(26398u, 24850u)), ~0u) & ~vec3<u32>(arg_0.x, arg_2, arg_0.x)));
    global1 = array<vec3<bool>, 19>();
    var_1 = Struct_3(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b.b, var_1.d.b))))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(866f)) - 1729f), var_1.d, any(!(!var_0.d.c)), var_0.d);
    return _wgslsmith_div_vec2_u32(~arg_0.xx, abs(vec2<u32>(min(firstLeadingBit(0u), ~arg_2), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.b.d.x, 33264u, var_0.b.d.x) >> (vec4<u32>(42920u, 5179u, u_input.a, 0u) % vec4<u32>(32u)), vec4<u32>(10071u, var_1.b.d.x, var_1.d.d.x, 1u)))));
}

fn func_1() -> Struct_3 {
    global0 = array<f32, 3>();
    let var_0 = Struct_1(vec3<u32>(~1u, 4294967295u, _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 0u)), ~u_input.a), 47000u)), global0[_wgslsmith_index_u32(u_input.a & ~0u, 3u)], ~1u, vec2<u32>(4294967295u, _wgslsmith_sub_u32(~u_input.a, ~19244u)) >> (~firstLeadingBit(func_2(vec3<u32>(21233u, 1u, 4294967295u), 0i, 83370u)) % vec2<u32>(32u)), -145f);
    let var_1 = Struct_3(true, Struct_2(0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 3u)] * -1055f)))), vec2<bool>(true, true), ~_wgslsmith_clamp_vec3_u32(var_0.a, vec3<u32>(1582u, var_0.c, 24156u), var_0.a) | var_0.a), !all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), Struct_2(_wgslsmith_mod_i32(-(~37715i), ~1i), -1000f, vec2<bool>(true, true), vec3<u32>(u_input.a ^ u_input.a, 1u, firstTrailingBit(var_0.d.x)) >> (vec3<u32>(~18295u, 24265u, _wgslsmith_clamp_u32(337u, 4294967295u, u_input.a)) % vec3<u32>(32u))));
    global1 = array<vec3<bool>, 19>();
    global0 = array<f32, 3>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b.b)));
    var var_2 = var_0.b.d.yy;
    let var_3 = vec3<i32>(countOneBits(func_1().b.a), ~var_0.d.a, _wgslsmith_dot_vec2_i32(-abs(reverseBits(vec2<i32>(0i, -7104i))), select(~abs(vec2<i32>(20493i, -10855i)), vec2<i32>(_wgslsmith_sub_i32(-137i, -2147483647i), _wgslsmith_mod_i32(0i, 26100i)), vec2<bool>(true, var_0.a))));
    var var_4 = select(select(select(select(global1[_wgslsmith_index_u32(~55814u, 19u)], !vec3<bool>(true, false, var_0.d.c.x), global1[_wgslsmith_index_u32(14033u | var_0.b.d.x, 19u)]), vec3<bool>(true, var_0.b.c.x, var_0.b.c.x && var_0.d.c.x), !(856f < var_0.d.b)), select(vec3<bool>(0u >= var_2.x, true, var_3.x != var_0.d.a), select(!vec3<bool>(var_0.b.c.x, true, var_0.a), global1[_wgslsmith_index_u32(firstTrailingBit(var_2.x), 19u)], var_0.a), !var_0.c), all(vec2<bool>(any(var_0.d.c), false))), vec3<bool>(true, true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-879f - 1045f))) < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-444f - var_0.b.b), _wgslsmith_f_op_f32(sign(-2640f))))), all(var_0.d.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-384f, var_0.d.b), vec2<f32>(var_0.d.b, var_1))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.b, 1000f)))));
}

