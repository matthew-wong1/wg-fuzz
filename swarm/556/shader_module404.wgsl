struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 5>;

var<private> global1: vec4<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: i32, arg_3: vec2<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1553f * 437f)), _wgslsmith_f_op_f32(ceil(-1158f)), arg_3.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(700f, 878f, 169f, _wgslsmith_f_op_f32(112f * 445f)))));
    let var_1 = Struct_4(Struct_3(firstLeadingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.b, 0u), vec4<u32>(u_input.b, u_input.c.x, 43985u, 41035u)))), ~(~vec2<u32>(abs(12540u), 705u)), Struct_3(u_input.c.x), Struct_1(arg_0));
    var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(var_0.x * arg_3.x), _wgslsmith_f_op_f32(-var_0.x), 1421f)), vec4<f32>(arg_3.x, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_3.x, arg_3.x)) * _wgslsmith_f_op_f32(ceil(-1000f))), 685f))));
    let var_2 = Struct_4(var_1.a, ~(~(~var_1.b)), Struct_3(~(31356u & ~var_1.a.a)), arg_1);
    let var_3 = _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.b.x, _wgslsmith_dot_vec2_u32(var_1.b | vec2<u32>(4294967295u, var_2.b.x), ~u_input.c.xy), var_1.c.a, 55115u), abs(_wgslsmith_mult_vec4_u32(min(vec4<u32>(var_1.c.a, 1u, var_2.b.x, u_input.b), vec4<u32>(40330u, var_2.b.x, u_input.c.x, var_2.b.x)), vec4<u32>(u_input.c.x, var_1.b.x, 1u, u_input.b))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_2.a.a, var_2.a.a, 4294967295u) & vec4<u32>(1u, u_input.b, 1u, 45239u), ~vec4<u32>(u_input.c.x, 54781u, 4294967295u, var_2.c.a)), var_1.b.x, ~min(22202u, u_input.c.x), 4294967295u)), vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(10619u, u_input.c.x, 1u, var_1.a.a) << (_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.a.a, var_1.b.x, 4294967295u, u_input.b), vec4<u32>(48072u, 24153u, u_input.b, var_2.b.x)) % vec4<u32>(32u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(var_1.a.a, 28284u, 10604u, 19329u), vec4<u32>(var_1.a.a, u_input.b, 4294967295u, var_2.c.a))), _wgslsmith_mult_u32(abs(1u), var_1.c.a), 1u, ~max(_wgslsmith_mult_u32(var_2.b.x, var_2.b.x), u_input.b)));
    return true;
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = !(!select(select(any(vec4<bool>(false, false, global1.x, true)), !global1.x, func_3(vec3<i32>(-107i, 9589i, arg_0), Struct_1(vec3<i32>(-57138i, 1i, -1i)), 0i, vec2<f32>(-326f, 323f))), global1.x, all(vec4<bool>(true, true, true, global1.x))));
    let var_1 = Struct_4(Struct_3(~(~reverseBits(4294967295u))), ~vec2<u32>(min(_wgslsmith_add_u32(17537u, u_input.b), ~4294967295u), ~1u), Struct_3(u_input.b), Struct_1(vec3<i32>(_wgslsmith_clamp_i32(u_input.a.x, -58246i, u_input.a.x) >> (u_input.c.x % 32u), ~(~(-1i)), _wgslsmith_div_i32(abs(-1i), -1i))));
    var_0 = all(vec3<bool>(true, true, true));
    var var_2 = firstLeadingBit(0u);
    var_2 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_1.a.a, _wgslsmith_sub_u32(~0u, var_1.a.a | 2516u)) | 29680u, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4294967295u, var_1.c.a, u_input.c.x, u_input.c.x)), vec4<u32>(0u, 26022u, var_1.b.x, 4294967295u)), u_input.c.x));
    return -15248i;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_2 {
    var var_0 = arg_0.d >= _wgslsmith_f_op_f32(select(693f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(1448f * arg_0.b)))), any(vec3<bool>(true, global1.x, global1.x))));
    return Struct_2(Struct_1(-arg_1), arg_0.d, arg_0.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(arg_0.b)), _wgslsmith_f_op_f32(step(-1689f, _wgslsmith_f_op_f32(-306f + arg_0.d))), false)))), arg_0.c.a.x);
}

fn func_1(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: bool, arg_3: f32) -> vec4<bool> {
    let var_0 = !(!vec3<bool>(global1.x, global1.x, true));
    var var_1 = Struct_2(arg_0.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(-arg_3))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-706f + arg_3) * _wgslsmith_f_op_f32(select(-294f, -663f, var_0.x)))))), arg_0.d, arg_3, ~_wgslsmith_mod_i32(-2147483647i, 6911i));
    var_1 = func_4(Struct_2(var_1.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1035f, arg_3)))), Struct_1(_wgslsmith_sub_vec3_i32(firstTrailingBit(u_input.a), vec3<i32>(-20827i, u_input.a.x, u_input.e) << (u_input.c % vec3<u32>(32u)))), _wgslsmith_div_f32(467f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_3, -831f))))), _wgslsmith_dot_vec3_i32(vec3<i32>(func_2(arg_0.d.a.x), 541i, 5906i & arg_0.d.a.x), -u_input.a)), _wgslsmith_clamp_vec3_i32(u_input.d.xwy << (select(~vec3<u32>(0u, arg_0.a.a, 4294967295u), u_input.c, arg_2) % vec3<u32>(32u)), arg_0.d.a, -(arg_0.d.a >> (min(vec3<u32>(4294967295u, 3035u, arg_0.a.a), vec3<u32>(1u, 1u, arg_0.c.a)) % vec3<u32>(32u)))));
    var var_2 = ~vec4<u32>(arg_0.b.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.b.x, 0u, u_input.b) >> (vec4<u32>(u_input.c.x, 0u, arg_0.c.a, 10253u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(58410u, u_input.c.x, arg_0.b.x, 1u), vec4<u32>(4294967295u, 4294967295u, u_input.b, 4294967295u))) % 32u), ~1u, ~abs(reverseBits(u_input.b)), 4294967295u);
    var var_3 = ~_wgslsmith_div_vec4_u32(~min(vec4<u32>(var_2.x, 38443u, u_input.b, u_input.c.x), vec4<u32>(var_2.x, arg_0.c.a, arg_0.b.x, 4294967295u)), vec4<u32>(~var_2.x, 2543u, _wgslsmith_add_u32(var_2.x, 4294967295u), 0u)) | vec4<u32>(4294967295u, arg_0.b.x, arg_0.a.a, 4294967295u);
    return vec4<bool>(arg_2 & true, var_0.x, false, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_3)), arg_3), arg_3, true)) <= _wgslsmith_f_op_f32(max(368f, -820f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !select(!(!func_1(Struct_4(Struct_3(u_input.b), vec2<u32>(14018u, 4294967295u), Struct_3(1u), Struct_1(u_input.a)), vec2<i32>(u_input.e, u_input.e), false, 1000f)), select(!func_1(Struct_4(Struct_3(27969u), u_input.c.yx, Struct_3(u_input.c.x), Struct_1(u_input.d.zzx)), u_input.d.zw, global1.x, -250f), !(!vec4<bool>(false, global1.x, global1.x, global1.x)), false), !global1.x);
    global0 = array<vec2<i32>, 5>();
    let var_0 = Struct_3(u_input.c.x);
    global1 = func_1(Struct_4(Struct_3(firstTrailingBit(var_0.a)), u_input.c.yx, Struct_3(u_input.b), Struct_1(vec3<i32>(abs(-1i), u_input.d.x, u_input.d.x))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(var_0.a, ~_wgslsmith_mult_u32(11939u, 1u)), ~1u), 5u)], true, 1f);
    global1 = vec4<bool>(true, !(!func_3(u_input.a, Struct_1(u_input.a), -86482i, vec2<f32>(524f, -141f))) | (true | global1.x), !(_wgslsmith_div_f32(-588f, _wgslsmith_f_op_f32(trunc(918f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(460f)))), _wgslsmith_sub_u32(1u, u_input.b) == _wgslsmith_add_u32(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c.yz)));
    let var_1 = Struct_4(var_0, vec2<u32>(_wgslsmith_dot_vec4_u32(max(vec4<u32>(4294967295u, var_0.a, u_input.c.x, var_0.a), vec4<u32>(var_0.a, var_0.a, 1u, 14807u) ^ vec4<u32>(53898u, var_0.a, var_0.a, var_0.a)), ~min(vec4<u32>(0u, var_0.a, u_input.c.x, u_input.b), vec4<u32>(1u, u_input.c.x, 1u, 100304u))), _wgslsmith_mult_u32(var_0.a, u_input.b)), var_0, Struct_1(-_wgslsmith_div_vec3_i32(min(vec3<i32>(-1i, u_input.e, 0i), u_input.d.wwy), u_input.a << (vec3<u32>(0u, 23419u, 0u) % vec3<u32>(32u)))));
    global1 = vec4<bool>(false, true, 0i > _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(global0[_wgslsmith_index_u32(1u, 5u)], -var_1.d.a.zz), min(global0[_wgslsmith_index_u32(~var_0.a, 5u)], vec2<i32>(var_1.d.a.x, var_1.d.a.x))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + vec4<f32>(352f, 217f, -367f, -279f)))));
}

