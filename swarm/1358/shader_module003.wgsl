struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: u32,
    d: Struct_3,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

var<private> global1: array<Struct_5, 32>;

var<private> global2: Struct_3 = Struct_3(Struct_1(vec2<bool>(false, false), vec4<u32>(36460u, 75225u, 69503u, 22773u)), 1u, vec2<f32>(-140f, 1000f), 1632f, vec2<i32>(23723i, 2147483647i));

var<private> global3: array<Struct_5, 25>;

var<private> global4: array<Struct_5, 11>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> u32 {
    global2 = Struct_3(global2.a, 53917u, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2.d), 574f), _wgslsmith_f_op_vec2_f32(floor(global2.c))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.x - global2.d)))), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, 11691i), u_input.a.x) | abs(vec2<i32>(8003i, u_input.a.x)), (vec2<i32>(u_input.a.x, global2.e.x) & vec2<i32>(28190i, -1i)) << (select(global2.a.b.yw, vec2<u32>(0u, global2.b), select(global2.a.a, global2.a.a, global2.a.a.x)) % vec2<u32>(32u))));
    var var_0 = _wgslsmith_f_op_f32(-global2.c.x);
    let var_1 = Struct_4(Struct_3(Struct_1(vec2<bool>(true, global2.a.a.x), ~global2.a.b ^ global2.a.b), 4294967295u, global2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-433f, global2.c.x)) - -845f)), u_input.a), Struct_3(Struct_1(!(!global2.a.a), reverseBits(min(global2.a.b, global2.a.b))), ~0u, global2.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(max(global2.d, 1000f))), abs(vec2<i32>(0i, 0i)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], 0u), vec2<u32>(global2.b, 1u)) % vec2<u32>(32u))), ~(~(~1u)), Struct_3(Struct_1(!select(global2.a.a, vec2<bool>(false, false), global2.a.a.x), reverseBits(reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(global2.a.b.x, 24u)], 4294967295u, global2.a.b.x, global0[_wgslsmith_index_u32(41887u, 24u)])))), ~11317u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d - 1011f)), global2.d), 1f, reverseBits(-(~global2.e))), Struct_2(global2.a.a.x));
    let var_2 = true;
    let var_3 = all(select(select(select(global2.a.a, var_1.d.a.a, vec2<bool>(var_2, var_2)), select(select(var_1.b.a.a, vec2<bool>(var_1.b.a.a.x, var_2), true), vec2<bool>(global2.a.a.x, false), global2.a.a), any(select(var_1.b.a.a, global2.a.a, false))), vec2<bool>(any(!var_1.a.a.a), true), ~_wgslsmith_sub_u32(99878u, var_1.b.a.b.x) == var_1.a.b));
    return ~12130u;
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: f32) -> bool {
    let var_0 = Struct_1(!(!vec2<bool>(global2.c.x > -883f, arg_0.a)), ~(~firstLeadingBit(global2.a.b)) ^ global2.a.b);
    var var_1 = firstTrailingBit(_wgslsmith_add_u32(~(~func_3()), 15891u & _wgslsmith_mult_u32(global2.b, global0[_wgslsmith_index_u32(~var_0.b.x, 24u)])));
    var var_2 = select(select(select(vec2<bool>(global2.e.x < arg_1, global2.a.a.x & arg_0.a), global2.a.a, true), var_0.a, all(vec4<bool>(var_0.a.x, true, all(vec4<bool>(true, false, arg_0.a, true)), true))), select(!vec2<bool>(arg_2 != -147f, true), vec2<bool>(!arg_0.a, select(false, !arg_0.a, true)), select(any(vec3<bool>(true, true, true)) || var_0.a.x, -2147483647i <= global2.e.x, select(!global2.a.a.x, !var_0.a.x, true))), !(!any(vec3<bool>(arg_0.a, global2.a.a.x, true)) != arg_0.a));
    return (-(_wgslsmith_div_i32(43778i, u_input.a.x) >> ((global2.b >> (var_0.b.x % 32u)) % 32u)) >= global2.e.x) && !(!var_0.a.x);
}

fn func_1() -> Struct_3 {
    let var_0 = any(vec3<bool>(global2.a.a.x, false, !func_2(Struct_2(false), global2.e.x, global2.c.x) && global2.a.a.x));
    global2 = Struct_3(global2.a, 1u, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global2.c - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global2.c)))), global2.c, global2.a.a)), 2042f, min(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-2147483647i, u_input.a.x), _wgslsmith_div_i32(-70396i, global2.e.x)), firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(global2.e.x, -2147483647i), vec2<i32>(19864i, -65042i)))), u_input.a));
    global2 = Struct_3(Struct_1(select(select(vec2<bool>(true, global2.a.a.x), vec2<bool>(true, false), true), !(!vec2<bool>(true, global2.a.a.x)), true && any(vec4<bool>(global2.a.a.x, true, var_0, global2.a.a.x))), ~_wgslsmith_div_vec4_u32(select(vec4<u32>(4294967295u, 1u, global2.a.b.x, 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(0u, 24u)], 0u, global0[_wgslsmith_index_u32(1u, 24u)], 6276u), false), global2.a.b)), 109668u, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(540f, global2.c.x), global2.c)), _wgslsmith_f_op_vec2_f32(select(global2.c, global2.c, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-147f, global2.c.x))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.d, 282f), vec2<f32>(-693f, -1069f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global2.d, 738f), -1213f) + vec2<f32>(_wgslsmith_f_op_f32(floor(1000f)), global2.c.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -803f)), global2.c.x)), vec2<i32>(0i, u_input.a.x ^ global2.e.x) | -(~(-vec2<i32>(13194i, global2.e.x))));
    var var_1 = reverseBits(global0[_wgslsmith_index_u32(global2.a.b.x, 24u)]);
    var_1 = countOneBits(reverseBits(select(global0[_wgslsmith_index_u32(~0u & global2.b, 24u)], ~0u << (global2.b % 32u), !var_0 | false)));
    return Struct_3(Struct_1(vec2<bool>(!select(global2.a.a.x, false, false), any(vec4<bool>(true, true, true, var_0))), global2.a.b), _wgslsmith_mod_u32(~firstTrailingBit(54219u), 74845u >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(global2.a.b, global2.a.b), 4294967295u), 24u)], 24u)] % 32u)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(1000f, 514f), _wgslsmith_f_op_f32(select(global2.c.x, 256f, true)))))), global2.c.x, ~u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 32>();
    let var_0 = !global2.a.a.x;
    global0 = array<u32, 24>();
    var var_1 = global0[_wgslsmith_index_u32(0u, 24u)];
    global3 = array<Struct_5, 25>();
    global2 = func_1();
    let var_2 = ~(((i32(-1i) * -2147483647i) ^ (_wgslsmith_clamp_i32(u_input.a.x, -17917i, -10899i) << ((global2.b << (15261u % 32u)) % 32u))) >> (~global2.b % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 2147483647i, global2.e.x), vec3<i32>(-13463i, -14554i, 20275i) << (global2.a.b.xzw % vec3<u32>(32u)))), max(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, var_2, 2147483647i), vec3<i32>(global2.e.x, global2.e.x, -1i)), vec3<i32>(-8826i, 1i, u_input.a.x)) | vec3<i32>(-global2.e.x, ~0i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 49349i), vec2<i32>(global2.e.x, 18160i))), vec3<i32>(_wgslsmith_div_i32(~23396i, -2147483647i), ~firstTrailingBit(var_2), var_2)), abs(global2.a.b));
}

