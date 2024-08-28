struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 4>;

var<private> global1: vec3<bool>;

var<private> global2: Struct_1;

var<private> global3: f32;

var<private> global4: vec2<u32> = vec2<u32>(1u, 0u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1() -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(1u, 4u)];
    return 1679u ^ _wgslsmith_div_u32(~firstTrailingBit(_wgslsmith_div_u32(global4.x, global2.e)), global4.x);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<bool>) -> vec2<u32> {
    let var_0 = arg_1;
    var var_1 = true;
    var var_2 = global0[_wgslsmith_index_u32(global4.x, 4u)];
    global2 = Struct_1(_wgslsmith_mult_i32(~(~(i32(-1i) * -1i)), var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3035f - -166f)), 859f, _wgslsmith_f_op_f32(max(arg_0, 1468f)), select(1u, countOneBits(~1u) << (~arg_1.e % 32u), true));
    var var_3 = vec3<i32>(min(~(i32(-1i) * -37807i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, _wgslsmith_clamp_i32(1i, arg_1.a, global2.a), var_0.a, var_0.a), ~vec4<i32>(var_0.a, -1119i, global2.a, arg_1.a))), abs(abs(~(-3206i)) & _wgslsmith_mod_i32(_wgslsmith_mod_i32(-1908i, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.a, 1i, -1i), vec3<i32>(2147483647i, global2.a, 13375i)))), 2147483647i);
    return min(firstLeadingBit(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.e, 4294967295u) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u)), ~vec2<u32>(arg_1.e, global4.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 0u) | vec2<u32>(u_input.a, 1u), vec2<u32>(1u, global2.e) << (vec2<u32>(0u, arg_1.e) % vec2<u32>(32u))))), abs(firstTrailingBit(min(~vec2<u32>(var_0.e, 14372u), vec2<u32>(u_input.a, arg_1.e) >> (vec2<u32>(32680u, 11529u) % vec2<u32>(32u))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32, arg_3: Struct_3) -> vec3<bool> {
    var var_0 = Struct_2(24413u > global4.x);
    global4 = select(~vec2<u32>(func_1(), _wgslsmith_mod_u32(0u, firstLeadingBit(21125u))), ~select(_wgslsmith_clamp_vec2_u32(func_3(arg_3.a.x, arg_0, Struct_2(false), vec3<bool>(true, true, false)), vec2<u32>(4294967295u, global2.e), abs(vec2<u32>(11050u, 4294967295u))), abs(countOneBits(vec2<u32>(u_input.a, 4294967295u))), 9348i <= arg_0.a), false);
    let var_1 = _wgslsmith_sub_vec2_i32(~(-_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(global2.a, global2.a)), vec2<i32>(-1i, 1i))), _wgslsmith_add_vec2_i32(select(-vec2<i32>(arg_0.a, 2147483647i), abs(vec2<i32>(1i, 1i)), vec2<bool>(select(false, false, true), !var_0.a)), vec2<i32>(global2.a, ~global2.a)));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.a.yx) * vec2<f32>(-1278f, arg_2));
    var var_3 = reverseBits(vec2<u32>((1u << (global4.x % 32u)) << ((u_input.a << (1u % 32u)) % 32u), 0u) << (func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(682f + global2.b) + var_2.x), arg_0, Struct_2(!var_0.a), select(select(vec3<bool>(true, true, true), vec3<bool>(global1.x, true, true), vec3<bool>(false, global1.x, global1.x)), vec3<bool>(false, false, global1.x), any(vec3<bool>(var_0.a, true, false)))) % vec2<u32>(32u)));
    return vec3<bool>(!(761f < arg_3.a.x), (true & !select(global1.x, var_0.a, var_0.a)) & any(select(!global1.zy, global1.zx, any(vec2<bool>(var_0.a, global1.x)))), arg_0.c == _wgslsmith_f_op_f32(-arg_3.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = reverseBits(reverseBits(vec2<u32>(max(40814u, global4.x & 0u), select(u_input.a, ~63866u, global1.x))));
    let var_0 = global2.a;
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-316f * global2.c)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b * global2.c) + global2.d)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -347f)));
    let var_3 = global0[_wgslsmith_index_u32(~func_1(), 4u)];
    global1 = select(!select(select(func_2(Struct_1(0i, -1823f, var_2.x, global2.b, 1u), Struct_3(var_3.a), 676f, global0[_wgslsmith_index_u32(40947u, 4u)]), !vec3<bool>(global1.x, global1.x, global1.x), !vec3<bool>(global1.x, false, global1.x)), vec3<bool>(all(vec4<bool>(global1.x, global1.x, global1.x, false)), true, global2.b <= global2.b), false), select(select(!vec3<bool>(global1.x, global1.x, global1.x), !select(vec3<bool>(global1.x, true, false), vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, true, true)), func_2(Struct_1(31580i, global2.d, var_3.a.x, 1111f, 56773u), Struct_3(vec3<f32>(-652f, var_2.x, var_3.a.x)), global2.d, Struct_3(var_3.a))), vec3<bool>(global1.x, any(func_2(Struct_1(global2.a, 851f, 2161f, 911f, global4.x), Struct_3(vec3<f32>(var_2.x, -402f, var_2.x)), var_3.a.x, global0[_wgslsmith_index_u32(global2.e, 4u)])), global1.x), global2.a != global2.a), false);
    let var_4 = select(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(63558u, 1u, global2.e, 0u), vec4<u32>(global2.e, 1u, u_input.a, global4.x)), vec4<u32>(43306u, global4.x, u_input.a, 1u) >> (vec4<u32>(global2.e, 1u, 4294967295u, u_input.a) % vec4<u32>(32u))), ~(~vec4<u32>(20040u, global4.x, u_input.a, 4294967295u)), ~vec4<u32>(4294967295u, 6031u, 1u, 4998u) & (vec4<u32>(u_input.a, u_input.a, 0u, 0u) << (vec4<u32>(4294967295u, global2.e, 13546u, global4.x) % vec4<u32>(32u)))) << ((max(_wgslsmith_mod_vec4_u32(vec4<u32>(global4.x, global2.e, 72u, 13299u), vec4<u32>(global4.x, u_input.a, 4294967295u, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(28604u, 82232u, 4294967295u, 0u), vec4<u32>(4294967295u, 29855u, 1u, u_input.a))) >> (vec4<u32>(global2.e, _wgslsmith_clamp_u32(global2.e, u_input.a, 4294967295u), 1u, ~54888u) % vec4<u32>(32u))) % vec4<u32>(32u)), firstTrailingBit(_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(4294967295u, 50088u, 4294967295u, global4.x)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(global4.x, u_input.a, 9343u, 4294967295u), vec4<u32>(global2.e, global2.e, global2.e, 26810u)) % vec4<u32>(32u)), min(vec4<u32>(22418u, 39059u, global2.e, u_input.a), ~vec4<u32>(1u, u_input.a, global4.x, global2.e)))), select(vec4<bool>(!(!global1.x), all(vec4<bool>(false, true, global1.x, false)), global1.x, true), !(!(!vec4<bool>(global1.x, false, global1.x, global1.x))), select(select(vec4<bool>(true, global1.x, false, global1.x), select(vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(true, false, true, global1.x)), any(vec4<bool>(global1.x, true, global1.x, global1.x))), !vec4<bool>(global1.x, true, global1.x, true), select(!vec4<bool>(false, false, false, global1.x), select(vec4<bool>(true, global1.x, global1.x, true), vec4<bool>(global1.x, global1.x, global1.x, global1.x), global1.x), !global1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.x, -104f, var_3.a.x, global2.b)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.x, var_2.x, 1444f, global2.c))), vec4<f32>(var_2.x, -852f, var_3.a.x, var_3.a.x), select(vec4<bool>(true, false, global1.x, global1.x), vec4<bool>(global1.x, true, global1.x, false), true)))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(182f - var_2.x), var_2.x, _wgslsmith_f_op_f32(-var_3.a.x), 366f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_3.a))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1403f, global2.b, -1121f)), _wgslsmith_f_op_vec3_f32(sign(var_3.a)), any(global1.yz))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_3.a.x)) + -364f) + -772f)), var_4.xwx, _wgslsmith_mod_u32((global4.x << (reverseBits(0u) % 32u)) & ~0u, ~countOneBits(u_input.a)));
}

