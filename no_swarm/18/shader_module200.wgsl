struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec4<u32>,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<bool>,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: vec3<u32> = vec3<u32>(1u, 27157u, 4294967295u);

var<private> global1: array<u32, 32>;

var<private> global2: vec4<i32> = vec4<i32>(-29737i, 0i, -14350i, -21134i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: Struct_3) -> u32 {
    let var_0 = Struct_4(Struct_2(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-500f, 1000f) * _wgslsmith_f_op_f32(f32(-1f) * -938f))), countOneBits(~0i) ^ _wgslsmith_mult_i32(_wgslsmith_add_i32(-global2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, global2.x, global2.x, -25638i), vec4<i32>(global2.x, 92145i, arg_0.x, 12183i))), _wgslsmith_add_i32(~(-263i), -1i)), select(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 47980u), min(vec4<u32>(global1[_wgslsmith_index_u32(global0.x, 32u)], 0u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(global0.x, 32u)], 0u, 2336u)), max(vec4<u32>(global0.x, 0u, 1u, u_input.a.x), vec4<u32>(global0.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 32u)], 32u)], 6899u, 0u))), select(vec4<u32>(43989u, u_input.a.x, global1[_wgslsmith_index_u32(global0.x, 32u)], 5860u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 4623u, 6598u, global1[_wgslsmith_index_u32(global0.x, 32u)]), vec4<u32>(global1[_wgslsmith_index_u32(0u, 32u)], 0u, u_input.a.x, u_input.a.x)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true))) & abs(~vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(45390u, 32u)], 61913u, u_input.a.x)), true & (firstLeadingBit(u_input.a.x) > _wgslsmith_dot_vec2_u32(global0.xy, global0.xz))), arg_2);
    var var_1 = Struct_4(arg_2.a, -firstTrailingBit(arg_0.x), firstTrailingBit(firstLeadingBit(firstTrailingBit(var_0.c) & var_0.c)), Struct_3(var_0.d.b, var_0.a));
    var var_2 = _wgslsmith_mod_vec2_i32(arg_0, _wgslsmith_add_vec2_i32(arg_0 << (~vec2<u32>(u_input.a.x, global1[_wgslsmith_index_u32(62363u, 32u)]) % vec2<u32>(32u)), select(vec2<i32>(arg_0.x, 25521i), _wgslsmith_add_vec2_i32(global2.wy, vec2<i32>(var_0.b, 1i)), all(vec2<bool>(true, false))))) | -((firstLeadingBit(arg_0) >> (vec2<u32>(u_input.a.x, var_0.c.x) % vec2<u32>(32u))) >> (global0.yz % vec2<u32>(32u)));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(abs(var_0.d.a.a)), -1953f);
    var_3 = Struct_2(var_1.a.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.a * -1421f)))));
    return abs(~(1u & ~select(0u, global1[_wgslsmith_index_u32(global0.x, 32u)], false)));
}

fn func_2() -> Struct_1 {
    global1 = array<u32, 32>();
    global0 = countOneBits(_wgslsmith_add_vec3_u32(~(~(vec3<u32>(1u, u_input.a.x, 4294967295u) | vec3<u32>(4294967295u, 4294967295u, 0u))), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(max(vec3<u32>(u_input.a.x, global0.x, u_input.a.x), vec3<u32>(global0.x, 27702u, 4294967295u)), _wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, 1u, 0u), vec3<u32>(u_input.a.x, 4294967295u, global1[_wgslsmith_index_u32(global0.x, 32u)]))), ~vec3<u32>(4294967295u, global0.x, 4294967295u) & _wgslsmith_div_vec3_u32(vec3<u32>(35131u, global0.x, 19901u), vec3<u32>(1u, u_input.a.x, 29388u)))));
    global0 = ~countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(func_3(global2.yx, vec3<f32>(857f, 1613f, 1000f), Struct_3(Struct_2(108f, 674f), Struct_2(1125f, -1000f))), 0u, u_input.a.x | global0.x), ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a.x, 79973u), vec3<u32>(global0.x, u_input.a.x, 1u))));
    global2 = reverseBits(reverseBits(~(-vec4<i32>(-1i, global2.x, global2.x, 0i))));
    global1 = array<u32, 32>();
    return Struct_1(select(vec4<bool>(true, true, (-29728i <= global2.x) | true, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false)))), global0.zx);
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: vec2<u32>) -> i32 {
    global1 = array<u32, 32>();
    let var_0 = !(!(_wgslsmith_dot_vec3_u32(vec3<u32>(22106u, global0.x, global1[_wgslsmith_index_u32(0u, 32u)]), vec3<u32>(4294967295u, arg_1, 52299u)) < global0.x) | any(vec3<bool>(false, all(vec3<bool>(false, false, false)), any(vec2<bool>(true, true)))));
    var var_1 = func_2();
    global2 = vec4<i32>(_wgslsmith_dot_vec3_i32(arg_0.ywy, -abs(vec3<i32>(-11690i, 14302i, -2147483647i) << (vec3<u32>(arg_2.x, 40558u, global1[_wgslsmith_index_u32(var_1.b.x, 32u)]) % vec3<u32>(32u)))), arg_0.x, arg_0.x, ~global2.x | -4802i);
    global2 = -(~arg_0);
    return ~(-(i32(-1i) * -(global2.x << (0u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = (max(firstTrailingBit(~vec4<i32>(-9634i, -19574i, global2.x, global2.x)), firstTrailingBit(~vec4<i32>(1i, global2.x, global2.x, global2.x))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, global1[_wgslsmith_index_u32(35140u, 32u)], 0u, ~0u), vec4<u32>(~53407u, ~5350u, 18844u, ~u_input.a.x)) % vec4<u32>(32u))) ^ ~vec4<i32>(max(-34335i, select(53307i, -107924i, false)), -2147483647i, _wgslsmith_sub_i32(-71i, func_1(vec4<i32>(global2.x, global2.x, global2.x, global2.x), global1[_wgslsmith_index_u32(66488u, 32u)], vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(50211u, 32u)], 32u)], 25205u))), firstTrailingBit(global2.x));
    global2 = select(vec4<i32>(reverseBits(reverseBits(102896i) | global2.x), _wgslsmith_clamp_i32(-global2.x, abs(1i), global2.x), 2147483647i, global2.x), countOneBits(~vec4<i32>(_wgslsmith_div_i32(-11629i, global2.x), 57160i, 1i, global2.x)), func_2().a);
    global0 = vec3<u32>(~_wgslsmith_clamp_u32(_wgslsmith_div_u32(89394u, u_input.a.x), abs(reverseBits(1u)), _wgslsmith_add_u32(global1[_wgslsmith_index_u32(~1u, 32u)], 1u)), ~(~1u), ~4294967295u);
    let var_0 = any(!vec2<bool>(!all(vec2<bool>(true, true)), true));
    global1 = array<u32, 32>();
    var var_1 = func_2().b.x;
    let var_2 = Struct_4(Struct_2(_wgslsmith_f_op_f32(step(-1425f, -117f)), 1f), -31813i, ~vec4<u32>(4294967295u, select(0u, abs(global0.x), var_0), func_3(_wgslsmith_div_vec2_i32(global2.zz, global2.xz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2505f, 1511f, -1000f)), Struct_3(Struct_2(-138f, 342f), Struct_2(-1000f, -497f))), _wgslsmith_mod_u32(0u, 4294967295u)), Struct_3(Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1097f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(705f))))), Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-424f * -401f), -892f, -6484i >= global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1225f) * 1048f))));
    let var_3 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-809f, -1524f, var_2.a.a), vec3<f32>(395f, var_2.a.a, 1000f)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1242f, 233f, 2373f)))))), vec2<u32>(global0.x, func_3(vec2<i32>(global2.x, min(0i, global2.x)), vec3<f32>(_wgslsmith_div_f32(1000f, -1000f), _wgslsmith_f_op_f32(-var_2.a.b), _wgslsmith_f_op_f32(f32(-1f) * -453f)), var_2.d)), func_2().a, var_2);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(var_3.a.xx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_3.a.zx, var_3.a.xx, var_3.c.wz)), vec2<f32>(-742f, 477f)))));
}

