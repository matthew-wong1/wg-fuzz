struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: bool,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(i32(-2147483648), i32(-2147483648), 3549i, 50918i, 1i, 1833i, 0i, -4200i, i32(-2147483648), 0i, 1i, 2147483647i, -29467i, i32(-2147483648), -1i, 0i, 11152i, 2147483647i, -20615i, 18679i, 10897i);

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(vec2<bool>(true, true), false, true, 0u, vec3<u32>(0u, 0u, 1u));

var<private> global3: Struct_2;

var<private> global4: i32;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec3<i32> {
    global3 = Struct_2(-2147483647i);
    var var_0 = Struct_2(-global0[_wgslsmith_index_u32(global1.d | countOneBits(4294967295u), 21u)] ^ 1i);
    var var_1 = Struct_1(select(!(!(!vec2<bool>(false, global2.a.x))), vec2<bool>(select(any(vec2<bool>(true, false)), global2.c, false), global1.a.x), true), global2.a.x, all(vec2<bool>(any(vec4<bool>(global1.c, global2.b, global1.a.x, global1.a.x)), false)), u_input.a.x ^ ~(~(51394u >> (global2.d % 32u))), vec3<u32>(u_input.a.x, ~(~0u), 0u));
    let var_2 = Struct_2(-firstTrailingBit(max(2147483647i, -58268i) >> (var_1.d % 32u)));
    global3 = Struct_2(~var_0.a);
    return _wgslsmith_sub_vec3_i32(~_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(var_2.a, var_0.a, var_0.a)) >> (min(global2.e, var_1.e) % vec3<u32>(32u)), -vec3<i32>(43142i, global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(var_1.e.x, 21u)]), firstLeadingBit(vec3<i32>(-1i, -1i, 20245i)) << (reverseBits(global2.e) % vec3<u32>(32u))), -_wgslsmith_add_vec3_i32(firstTrailingBit(-vec3<i32>(-10797i, 1i, var_0.a)), vec3<i32>(select(global0[_wgslsmith_index_u32(var_1.d, 21u)], -12824i, var_1.c), var_2.a, i32(-1i) * -26728i)));
}

fn func_2(arg_0: vec3<i32>) -> vec3<u32> {
    let var_0 = vec4<bool>(true, false, global1.c, global1.a.x);
    let var_1 = _wgslsmith_dot_vec3_i32(~(firstTrailingBit(vec3<i32>(23319i, 13259i, 40915i)) >> (vec3<u32>(global2.e.x, reverseBits(global2.d), 4294967295u) % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(arg_0, _wgslsmith_add_vec3_i32(arg_0, arg_0)));
    global3 = Struct_2(global0[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(60251u, abs(u_input.a.x) << (~global1.d % 32u), ~4294967295u)), 21u)]);
    global0 = array<i32, 21>();
    var var_2 = func_3();
    return global1.e;
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_2) -> bool {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_2 = Struct_1(!vec2<bool>(true, any(select(vec4<bool>(true, false, global1.a.x, global1.a.x), vec4<bool>(global2.a.x, false, false, global1.c), global2.b))), !select(true, global1.b, any(global2.a)), !all(vec2<bool>(true, true)), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~(arg_1.xy << (vec2<u32>(global2.d, arg_1.x) % vec2<u32>(32u))), global1.e.yz, global2.e.xy), ~(~_wgslsmith_add_vec2_u32(u_input.b.zx, vec2<u32>(1u, 0u)))), select(global1.e, reverseBits(countOneBits(reverseBits(global1.e))), vec3<bool>(any(vec3<bool>(true, global1.c, global2.b)), true, global2.c && true)));
    global2 = Struct_1(var_2.a, var_2.c, var_1 == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1311f + -117f)) * _wgslsmith_div_f32(1130f, 277f)), _wgslsmith_dot_vec4_u32(select(select(vec4<u32>(11227u, global2.d, 4294967295u, 1u), ~vec4<u32>(1u, 7834u, 24227u, arg_1.x), any(vec2<bool>(global1.b, true))), abs(vec4<u32>(35031u, u_input.a.x, 38986u, 31853u)) << (abs(vec4<u32>(1u, u_input.b.x, 4294967295u, 0u)) % vec4<u32>(32u)), select(vec4<bool>(global2.b, false, global2.c, true), !vec4<bool>(true, true, var_2.a.x, true), global2.a.x)), vec4<u32>(0u, global2.d, ~4569u, firstLeadingBit(35335u)) | min(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.e.x, global1.d, arg_1.x, 0u), vec4<u32>(global1.e.x, u_input.a.x, arg_1.x, arg_1.x)), vec4<u32>(35321u, var_2.e.x, global2.d, 0u))), vec3<u32>(arg_1.x, ~arg_1.x, 30264u));
    let var_3 = vec4<u32>(1u, ~countOneBits(~var_2.e.x), u_input.a.x, ~(0u >> (global2.d % 32u))) ^ _wgslsmith_add_vec4_u32(max((vec4<u32>(14832u, 1u, 10889u, global2.e.x) >> (vec4<u32>(arg_1.x, 4294967295u, global2.d, global2.e.x) % vec4<u32>(32u))) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_1.x, 4294967295u, global1.d), vec4<u32>(u_input.b.x, 21337u, 1u, var_2.d)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(max(vec4<u32>(4294967295u, arg_1.x, 4294967295u, u_input.b.x), vec4<u32>(arg_1.x, u_input.a.x, var_2.d, u_input.b.x)), reverseBits(vec4<u32>(arg_1.x, global1.e.x, global2.e.x, 15917u)))), abs(~vec4<u32>(u_input.b.x, global1.d, 1u, global2.d) | vec4<u32>(57610u, 74179u, 0u, 4294967295u)));
    return !any(select(select(!vec3<bool>(true, var_2.a.x, true), vec3<bool>(true, true, true), false), select(vec3<bool>(global1.b, global1.b, global1.a.x), vec3<bool>(var_2.a.x, true, var_2.c), var_2.c), (var_1 >= -1357f) | !var_2.b));
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    global1 = Struct_1(!global2.a, any(!vec4<bool>(!global1.b, global1.b & false, true, all(vec4<bool>(global2.b, global1.a.x, global1.b, global2.b)))), true, u_input.b.x, vec3<u32>(u_input.b.x, global2.e.x, 4294967295u));
    global0 = array<i32, 21>();
    let var_0 = func_4(-((_wgslsmith_mult_i32(1i, 1145i) << (global1.e.x % 32u)) & -1i), func_2(vec3<i32>(firstTrailingBit(29819i) << (~u_input.a.x % 32u), ~(-global0[_wgslsmith_index_u32(global1.d, 21u)]), 35747i)), Struct_2(_wgslsmith_mult_i32(-1i, _wgslsmith_clamp_i32(0i, global0[_wgslsmith_index_u32(global1.d, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)]) & reverseBits(global3.a))));
    global0 = array<i32, 21>();
    global4 = ~0i;
    return Struct_1(vec2<bool>(false, !all(!vec4<bool>(true, var_0, var_0, true))), global1.b || true, true, _wgslsmith_dot_vec2_u32(vec2<u32>(56961u, abs(firstTrailingBit(14760u))), vec2<u32>(u_input.a.x & 1u, reverseBits(global1.e.x))), ~_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.e.x, arg_0.x, global1.d), vec3<u32>(arg_0.x, 248u, 562u)), u_input.a.x & 1u, global2.e.x), max(global1.e, _wgslsmith_add_vec3_u32(vec3<u32>(global1.d, 4294967295u, 4294967295u), vec3<u32>(arg_0.x, 1u, 1u)))));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>) -> u32 {
    global0 = array<i32, 21>();
    let var_0 = arg_0;
    global0 = array<i32, 21>();
    var var_1 = func_1(~abs(global2.e.xy)).b;
    let var_2 = reverseBits(~((85704u ^ arg_1) << (arg_0.d % 32u)));
    return ~reverseBits(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 4294967295u), vec2<u32>(45583u, 1u)), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(global2.e.xz), global1.d, ~(firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -48558i), vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.b.x, 21u)]))) >> (global1.e.xz % vec2<u32>(32u))));
    let var_1 = -select(firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(21945i, global0[_wgslsmith_index_u32(4294967295u, 21u)], global3.a, global0[_wgslsmith_index_u32(30347u, 21u)]), reverseBits(vec4<i32>(1i, global3.a, -1i, -1i)))), min(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global3.a, 2147483647i), vec2<i32>(global3.a, 35219i)), global0[_wgslsmith_index_u32(var_0, 21u)] ^ 2147483647i, abs(global0[_wgslsmith_index_u32(0u, 21u)]), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, 112709u), 21u)]), vec4<i32>(global3.a, ~global0[_wgslsmith_index_u32(66699u, 21u)], -3110i, ~global3.a)), select(vec4<bool>(true, !global1.b, false, true), select(vec4<bool>(global2.c, global2.b, global2.a.x, false), vec4<bool>(false, false, true, true), u_input.b.x > global1.e.x), vec4<bool>(true, true, func_1(vec2<u32>(0u, var_0)).b, global1.b)));
    let var_2 = func_1(~firstLeadingBit(vec2<u32>(var_0, 0u)));
    let var_3 = !(!vec4<bool>(true, any(vec3<bool>(true, true, true)), true, select(var_2.a.x, false, var_2.b == global1.b)));
    var var_4 = _wgslsmith_mod_i32(abs(var_1.x), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.xyz | vec3<i32>(global0[_wgslsmith_index_u32(global1.d, 21u)], ~(-2126i), 52469i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1024f))), abs(44865i));
}

