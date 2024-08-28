struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 8>;

var<private> global1: array<i32, 22> = array<i32, 22>(2147483647i, -223i, -36441i, -4066i, -70185i, 2147483647i, 2147483647i, i32(-2147483648), 30059i, -30790i, 1i, -24241i, 1i, 10824i, -1i, 2147483647i, 0i, -33802i, 17200i, -31196i, 1i, 0i);

var<private> global2: array<vec2<f32>, 9> = array<vec2<f32>, 9>(vec2<f32>(463f, 1000f), vec2<f32>(-483f, 399f), vec2<f32>(1000f, 1407f), vec2<f32>(271f, 724f), vec2<f32>(2520f, 261f), vec2<f32>(-666f, 564f), vec2<f32>(981f, 750f), vec2<f32>(-1948f, 1133f), vec2<f32>(-1000f, -308f));

var<private> global3: vec4<u32> = vec4<u32>(90993u, 2852u, 0u, 33549u);

var<private> global4: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<bool>(false, true, true, false), -960f), Struct_1(vec4<bool>(true, true, true, false), -309f), Struct_1(vec4<bool>(true, true, true, false), 1000f), Struct_1(vec4<bool>(true, false, true, true), -1154f), Struct_1(vec4<bool>(true, false, true, true), 2467f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    global1 = array<i32, 22>();
    let var_0 = reverseBits((global0[_wgslsmith_index_u32(firstTrailingBit(1u) | (0u | global3.x), 8u)] & -vec4<i32>(-4168i, global1[_wgslsmith_index_u32(4294967295u, 22u)], 4797i, global1[_wgslsmith_index_u32(u_input.c, 22u)])) << (firstTrailingBit(vec4<u32>(abs(global3.x), ~u_input.b.x, ~58244u, 4294967295u | u_input.c)) % vec4<u32>(32u)));
    global1 = array<i32, 22>();
    global1 = array<i32, 22>();
    var var_1 = vec4<i32>(~(~0i), -49829i, u_input.e, global1[_wgslsmith_index_u32(global3.x, 22u)]);
    return !(!select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), all(vec4<bool>(true, false, false, false))), vec2<bool>(all(vec3<bool>(false, true, false)), var_1.x == -11844i), select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)))));
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: i32) -> vec3<i32> {
    let var_0 = ~1i;
    var var_1 = u_input.e;
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, 4537u)), select(u_input.a.yw, ~vec2<u32>(u_input.a.x, 24547u) & global3.yz, !func_3()) & (u_input.a.zy ^ ~vec2<u32>(global3.x, global3.x))), 5u)];
    var_2 = Struct_1(select(var_2.a, !(!var_2.a), var_2.a), arg_1.x);
    var var_3 = -57882i;
    return vec3<i32>(var_0, abs(i32(-1i) * -1i) << (global3.x % 32u), firstLeadingBit(var_0));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = -u_input.e;
    let var_1 = ~_wgslsmith_div_vec2_u32(firstTrailingBit(select(vec2<u32>(u_input.b.x, global3.x), u_input.b.zw, arg_2.a.x)) >> (vec2<u32>(global3.x, global3.x) % vec2<u32>(32u)), vec2<u32>(u_input.a.x, 1u));
    let var_2 = arg_2;
    global1 = array<i32, 22>();
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-735f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b + arg_2.b))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.xx + _wgslsmith_f_op_vec2_f32(-arg_1.zz))));
    return Struct_1(select(select(vec4<bool>(true, true, false, arg_2.a.x | true), select(var_2.a, select(vec4<bool>(false, false, true, arg_2.a.x), vec4<bool>(true, false, false, true), arg_2.a), !vec4<bool>(arg_2.a.x, false, true, var_2.a.x)), !var_2.a.x), vec4<bool>(var_2.a.x, !var_2.a.x, false, all(vec2<bool>(arg_2.a.x, var_2.a.x))), false), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.x, var_3.x, false))))));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: f32, arg_3: vec2<bool>) -> vec4<bool> {
    global3 = abs(u_input.a);
    var var_0 = func_4(select(select(~vec3<i32>(arg_0, 1i, 0i) | -vec3<i32>(u_input.e, 597i, arg_0), vec3<i32>(1977i, max(-20936i, arg_0), reverseBits(-38855i)), vec3<bool>(true, arg_3.x, arg_3.x)), func_2(1i, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -1070f, 1000f) * vec3<f32>(arg_2, 1365f, arg_2)), 0i) & -min(vec3<i32>(-1i, arg_0, -724i), vec3<i32>(2147483647i, -2147483647i, global1[_wgslsmith_index_u32(4294967295u, 22u)])), vec3<bool>(false, true, !any(vec4<bool>(arg_3.x, arg_3.x, false, true)))), vec3<f32>(arg_2, _wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(-139f * _wgslsmith_f_op_f32(-arg_2)))), _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(min(arg_2, -1086f)))), Struct_1(!select(select(vec4<bool>(arg_3.x, arg_3.x, false, false), vec4<bool>(false, false, false, true), false), vec4<bool>(arg_3.x, true, arg_3.x, true), any(vec4<bool>(false, false, arg_3.x, arg_3.x))), _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(-arg_2))));
    var var_1 = vec3<bool>(true, true, !(arg_3.x & !arg_3.x));
    global3 = u_input.a;
    let var_2 = vec4<u32>(1u, ~(~select(global3.x | 4294967295u, 1u, true)), u_input.c, u_input.a.x);
    return vec4<bool>(!(!any(vec4<bool>(true, arg_3.x, var_0.a.x, arg_3.x))), ((all(var_0.a.xzy) | !var_0.a.x) != (var_2.x >= u_input.d)) | !(!(!arg_3.x)), true, any(var_0.a.zw));
}

fn func_5(arg_0: f32, arg_1: vec4<u32>) -> u32 {
    global4 = array<Struct_1, 5>();
    var var_0 = select(abs(~vec3<i32>(countOneBits(u_input.e), 1i >> (1u % 32u), u_input.e >> (0u % 32u))), select(_wgslsmith_clamp_vec3_i32(~firstTrailingBit(vec3<i32>(-2877i, 1i, 23478i)), vec3<i32>(-28263i, ~15771i, reverseBits(0i)), vec3<i32>(firstTrailingBit(global1[_wgslsmith_index_u32(0u, 22u)]), -global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(firstTrailingBit(0u), 22u)])), vec3<i32>(select(_wgslsmith_mult_i32(-18974i, -1i), global1[_wgslsmith_index_u32(18251u, 22u)], true), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.e, -35013i), vec3<i32>(u_input.e, -2147483647i, -2147483647i)) | -global1[_wgslsmith_index_u32(u_input.d, 22u)], global1[_wgslsmith_index_u32(max(32768u, ~0u), 22u)]), vec3<bool>(any(vec4<bool>(true, true, false, true)) && true, countOneBits(53271u) == (20916u & global3.x), true)), true);
    global1 = array<i32, 22>();
    var var_1 = u_input.a.xxw;
    let var_2 = func_4(firstTrailingBit(vec3<i32>(0i, 2147483647i, _wgslsmith_mult_i32(var_0.x, countOneBits(global1[_wgslsmith_index_u32(u_input.b.x, 22u)])))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1612f, _wgslsmith_f_op_f32(-arg_0), arg_0))), Struct_1(func_4(reverseBits(max(vec3<i32>(global1[_wgslsmith_index_u32(0u, 22u)], var_0.x, -2147483647i), vec3<i32>(u_input.e, u_input.e, global1[_wgslsmith_index_u32(arg_1.x, 22u)]))), vec3<f32>(_wgslsmith_f_op_f32(select(arg_0, arg_0, true)), _wgslsmith_f_op_f32(f32(-1f) * -327f), func_4(vec3<i32>(var_0.x, global1[_wgslsmith_index_u32(u_input.c, 22u)], 2147483647i), vec3<f32>(144f, 104f, arg_0), Struct_1(vec4<bool>(false, true, true, true), arg_0)).b), Struct_1(func_4(vec3<i32>(u_input.e, u_input.e, 1i), vec3<f32>(arg_0, -793f, -123f), Struct_1(vec4<bool>(true, true, true, true), -527f)).a, _wgslsmith_f_op_f32(arg_0 * arg_0))).a, _wgslsmith_f_op_f32(543f * _wgslsmith_f_op_f32(trunc(1000f)))));
    return 33190u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4[_wgslsmith_index_u32(abs(u_input.a.x), 5u)];
    var var_1 = global4[_wgslsmith_index_u32(func_5(1f, select(u_input.a, select(u_input.a, ~(vec4<u32>(57450u, global3.x, global3.x, global3.x) >> (vec4<u32>(1u, 0u, 10031u, u_input.d) % vec4<u32>(32u))), !(!var_0.a)), select(func_1(u_input.e << (u_input.b.x % 32u), -global1[_wgslsmith_index_u32(28908u, 22u)], _wgslsmith_f_op_f32(max(var_0.b, -669f)), select(vec2<bool>(var_0.a.x, var_0.a.x), var_0.a.yx, false)), var_0.a, true))), 5u)];
    var var_2 = global4[_wgslsmith_index_u32(global3.x, 5u)];
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1055f, var_1.b, _wgslsmith_f_op_f32(-var_2.b)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.b, 1035f, var_1.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(367f, var_1.b, var_1.b) + vec3<f32>(-354f, var_0.b, -1539f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1117f, 278f, var_2.b) * vec3<f32>(1416f, var_2.b, var_0.b))))));
    global3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xx, ~(min(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.e, global1[_wgslsmith_index_u32(u_input.c, 22u)], u_input.e), vec3<i32>(global1[_wgslsmith_index_u32(63041u, 22u)], global1[_wgslsmith_index_u32(1u, 22u)], 0i)), vec3<i32>(28266i, -71823i, global1[_wgslsmith_index_u32(94332u, 22u)])) & ~(~vec3<i32>(u_input.e, 18703i, u_input.e))));
}

