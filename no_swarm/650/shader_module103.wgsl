struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<f32> = vec2<f32>(216f, 957f);

var<private> global2: array<Struct_2, 32>;

var<private> global3: array<Struct_1, 21>;

var<private> global4: u32 = 48714u;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_2, arg_3: bool) -> u32 {
    var var_0 = -863f;
    var var_1 = arg_2.c.yy;
    var_0 = _wgslsmith_div_f32(-560f, -246f);
    global2 = array<Struct_2, 32>();
    let var_2 = Struct_1(-arg_1, arg_1, any(vec3<bool>(any(vec4<bool>(true, true, false, true)), !(!arg_2.a.c), select(all(vec2<bool>(false, true)), true & arg_2.a.c, false))));
    return ~u_input.c;
}

fn func_2() -> Struct_1 {
    var var_0 = 72183u;
    let var_1 = vec3<u32>(_wgslsmith_mod_u32(func_3(~abs(u_input.c), -2147483647i, Struct_2(global3[_wgslsmith_index_u32(4294967295u, 21u)], global3[_wgslsmith_index_u32(u_input.c, 21u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(210f, global1.x, -721f)), global3[_wgslsmith_index_u32(u_input.c, 21u)]), select(select(false, false, false), true, any(vec4<bool>(false, false, false, true)))), ~_wgslsmith_add_u32(~u_input.c, 16797u)), 1u, 4294967295u);
    return Struct_1(-2147483647i, ~_wgslsmith_sub_i32(u_input.b, -_wgslsmith_sub_i32(13465i, u_input.a.x)), any(select(vec2<bool>(false, all(vec4<bool>(true, true, false, false))), vec2<bool>(true, true), true)));
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = Struct_1(-2147483647i, -1i, arg_3.c);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-861f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x * 200f), global1.x))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1559f * _wgslsmith_f_op_f32(round(global1.x))))));
    var var_2 = any(vec4<bool>(!arg_3.c, true, var_0.c, arg_3.c));
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.x, global1.x))), global1.x), vec2<f32>(-1000f, global1.x)))));
    let var_4 = u_input.a;
    return vec2<f32>(-1978f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1892f + global1.x)) + _wgslsmith_f_op_f32(sign(var_3.x))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: u32, arg_3: vec2<f32>) -> Struct_3 {
    let var_0 = 1023u;
    global2 = array<Struct_2, 32>();
    var var_1 = !((_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1133f - arg_3.x) * _wgslsmith_f_op_f32(-global1.x)) == _wgslsmith_f_op_f32(global1.x - global1.x)) || (any(!vec4<bool>(false, arg_0.c, arg_0.c, true)) || !select(false, arg_0.c, arg_0.c)));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(u_input.c, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, arg_2), vec2<u32>(arg_2, var_0)), arg_1.x, func_2())))));
    var var_3 = func_2();
    return Struct_3(_wgslsmith_mult_vec4_u32(~abs(vec4<u32>(arg_2, var_0, 61125u, u_input.c)) | vec4<u32>(firstLeadingBit(var_0), ~10404u, ~var_0, 88451u), _wgslsmith_clamp_vec4_u32(vec4<u32>(5434u, firstTrailingBit(4294967295u), _wgslsmith_div_u32(15968u, u_input.c), 55881u), vec4<u32>(1u, u_input.c, u_input.c, var_0) & (vec4<u32>(arg_2, 27375u, 5743u, arg_2) & vec4<u32>(arg_2, u_input.c, arg_2, u_input.c)), ~vec4<u32>(u_input.c, 0u, 33746u, u_input.c) << (~vec4<u32>(4783u, 1029u, 76221u, var_0) % vec4<u32>(32u)))), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(~(~0u), select(4294967295u, max(5166u, 73837u), false)), firstTrailingBit(~func_3(18763u, u_input.b, Struct_2(Struct_1(35994i, arg_0.b, arg_0.c), arg_0, vec3<f32>(401f, global1.x, var_2.x), arg_0), false))), 32u)], arg_0, _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x)))))), _wgslsmith_dot_vec3_u32((vec3<u32>(arg_2, 1u, var_0) << (vec3<u32>(var_0, arg_2, u_input.c) % vec3<u32>(32u))) | vec3<u32>(~4294967295u, 4294967295u, 7307u), vec3<u32>(~4294967295u, ~57214u, _wgslsmith_mult_u32(11110u, 0u)) << ((~vec3<u32>(arg_2, 76969u, 4999u) << (~vec3<u32>(u_input.c, arg_2, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var var_1 = func_1(global3[_wgslsmith_index_u32(74341u, 21u)], _wgslsmith_div_vec2_i32(min(~u_input.a.zx, u_input.a.xz << (_wgslsmith_mult_vec2_u32(vec2<u32>(51411u, 30728u), vec2<u32>(68938u, 1u)) % vec2<u32>(32u))), countOneBits(u_input.a.yx)), 21080u, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-256f, -235f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -603f) * vec2<f32>(global1.x, global1.x))), !select(vec2<bool>(false, false), vec2<bool>(false, false), false))))));
    let var_2 = vec2<bool>(!var_1.c.c, func_1(Struct_1(-2147483647i, -6189i, (var_1.b.b.c || var_1.b.a.c) & (var_1.b.d.c & true)), -vec2<i32>(u_input.b ^ 2147483647i, ~2147483647i), ~(u_input.c & firstLeadingBit(var_1.a.x)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(func_1(global3[_wgslsmith_index_u32(0u, 21u)], vec2<i32>(u_input.b, 49995i), 0u, var_1.b.c.zz).b.c.zx, _wgslsmith_f_op_vec2_f32(vec2<f32>(-382f, global1.x) * var_1.b.c.yz))))).b.a.c);
    var var_3 = _wgslsmith_sub_i32(0i, -46596i);
    var_0 = (u_input.a.x ^ ~firstLeadingBit(_wgslsmith_mod_i32(var_1.b.d.b, var_1.b.d.b))) | firstLeadingBit(u_input.b);
    var_1 = func_1(var_1.c, vec2<i32>(u_input.a.x, _wgslsmith_add_i32(-4502i, var_1.b.a.b)), 51645u, vec2<f32>(var_1.b.c.x, var_1.d));
    var var_4 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.x * global1.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-497f, 573f))), _wgslsmith_f_op_vec2_f32(func_4(~0u, var_1.a.xx, ~14958i, func_2())).x), -368f)));
    global2 = array<Struct_2, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_1.a.zzx) >> (var_1.a.wyz % vec3<u32>(32u)));
}

