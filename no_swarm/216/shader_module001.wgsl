struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13>;

var<private> global1: Struct_1;

var<private> global2: array<vec3<u32>, 3>;

var<private> global3: Struct_3 = Struct_3(vec4<f32>(-481f, -1807f, -663f, -694f), Struct_2(vec3<u32>(1u, 18980u, 23917u), vec2<u32>(1u, 2007u)), Struct_1(vec3<i32>(47816i, 0i, -26736i)));

var<private> global4: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(0u, 79126u, 4294967295u), vec3<u32>(4019u, 17271u, 61238u), vec3<u32>(40215u, 6104u, 22613u), vec3<u32>(28034u, 1u, 19242u));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<f32>) -> vec3<f32> {
    return vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -683f), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(286f - arg_0.x)))));
}

fn func_3(arg_0: vec3<f32>) -> bool {
    global0 = array<i32, 13>();
    global0 = array<i32, 13>();
    global1 = Struct_1(vec3<i32>(i32(-1i) * -52124i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(45596i & global3.c.a.x, -2147483647i, _wgslsmith_dot_vec3_i32(global3.c.a, vec3<i32>(global0[_wgslsmith_index_u32(20624u, 13u)], global0[_wgslsmith_index_u32(global3.b.a.x, 13u)], global3.c.a.x))), -global3.c.a.x), -select(u_input.d, _wgslsmith_sub_i32(1i, global3.c.a.x), true)));
    global4 = array<vec3<u32>, 4>();
    var var_0 = Struct_3(global3.a, global3.b, Struct_1(~_wgslsmith_div_vec3_i32(-global3.c.a, vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 13u)], 2147483647i, global1.a.x))));
    return true;
}

fn func_1() -> Struct_2 {
    var var_0 = firstTrailingBit(select(global3.b.b, ~vec2<u32>(14091u, firstLeadingBit(global3.b.b.x)), !func_3(_wgslsmith_f_op_vec3_f32(func_2(global3.a.xyw)))));
    let var_1 = Struct_4(vec2<u32>(~abs(~0u), global3.b.b.x), select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), false), vec2<bool>(true, global3.a.x < global3.a.x), all(vec4<bool>(true, true, true, true))), !select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, true), true), all(vec2<bool>(true, select(false, false, true)))));
    let var_2 = var_1.b.x;
    var var_3 = Struct_1(reverseBits(vec3<i32>(-20559i, firstTrailingBit(u_input.c), _wgslsmith_dot_vec2_i32(~global3.c.a.yz, firstTrailingBit(vec2<i32>(global0[_wgslsmith_index_u32(7540u, 13u)], -7622i))))));
    let var_4 = global3.a.xy;
    return Struct_2(~_wgslsmith_div_vec3_u32(vec3<u32>(0u, 24443u, var_1.a.x), select(global3.b.a, global2[_wgslsmith_index_u32(1u, 3u)], vec3<bool>(var_2, false, true))) ^ (global4[_wgslsmith_index_u32(global3.b.a.x, 4u)] ^ abs(~global3.b.a)), select(vec2<u32>(~u_input.b << (~global3.b.b.x % 32u), var_1.a.x), vec2<u32>(u_input.b, var_0.x | ~56347u), !var_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(global3.b.a.yx);
    var var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) + _wgslsmith_f_op_f32(-1000f - global3.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global3.a.x, global3.a.x))))), -1395f, 204f), func_1(), global3.c);
    global3 = Struct_3(vec4<f32>(-1658f, _wgslsmith_f_op_f32(f32(-1f) * -148f), 390f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1318f) * _wgslsmith_f_op_f32(max(global3.a.x, -743f))), _wgslsmith_f_op_f32(f32(-1f) * -279f))), Struct_2(~global3.b.a & _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), firstLeadingBit(global2[_wgslsmith_index_u32(1u, 3u)])), vec2<u32>(_wgslsmith_sub_u32(688u, ~global3.b.a.x), 1u)), var_1.c);
    global4 = array<vec3<u32>, 4>();
    var_1 = Struct_3(global3.a, global3.b, Struct_1(vec3<i32>(-(~99463i), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(var_1.b.b.x, 13u)], var_1.c.a.x), -30564i)));
    let x = u_input.a;
    s_output = StorageBuffer(func_1().a.xy, select(min(_wgslsmith_add_vec4_u32(vec4<u32>(global3.b.a.x, 12709u, var_0.x, u_input.b), vec4<u32>(global3.b.a.x, 1u, 4294967295u, 12458u)), firstTrailingBit(vec4<u32>(var_0.x, 46522u, u_input.b, var_0.x))) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, var_1.b.b.x, 1u, 21540u), vec4<u32>(var_0.x, var_1.b.b.x, global3.b.a.x, var_0.x)) % vec4<u32>(32u)), reverseBits(abs(vec4<u32>(4294967295u, var_1.b.b.x, 22980u, 0u)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, 1u, 4294967295u, 4294967295u), vec4<u32>(global3.b.a.x, 0u, global3.b.b.x, 34733u), vec4<u32>(var_1.b.b.x, 0u, 4294967295u, 0u)) % vec4<u32>(32u))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true))), abs(~(~(vec4<u32>(0u, global3.b.a.x, var_0.x, 92920u) | vec4<u32>(33673u, 4294967295u, 0u, 62025u)))), ~68527i & -(~global3.c.a.x & var_1.c.a.x));
}

