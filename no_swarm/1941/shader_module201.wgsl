struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<u32, 21> = array<u32, 21>(56406u, 4294967295u, 15764u, 4294967295u, 4294967295u, 1u, 70139u, 1u, 1u, 1859u, 86909u, 2199u, 3018u, 72449u, 86178u, 4294967295u, 3077u, 50432u, 54020u, 16996u, 13882u);

var<private> global2: vec2<u32>;

var<private> global3: array<i32, 9>;

var<private> global4: array<Struct_3, 2>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<f32>) -> bool {
    global0 = Struct_2(global0.a, firstLeadingBit(firstTrailingBit(countOneBits(vec2<i32>(global0.b.x, 8037i)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(arg_1.c.a, arg_0.a.a, false))))), _wgslsmith_mod_vec4_u32(~abs(arg_0.c.b), _wgslsmith_add_vec4_u32(~global0.c.b, ~vec4<u32>(0u, 41224u, 1u, 0u)))));
    global0 = arg_0;
    let var_0 = global4[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(14818u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.b.x, 10805u), global0.c.b.yx >> (vec2<u32>(global2.x, u_input.a) % vec2<u32>(32u))), _wgslsmith_sub_u32(global0.a.b.x, 74275u))), 2u)];
    global1 = array<u32, 21>();
    return all(select(select(!select(vec3<bool>(arg_1.a, arg_1.a, arg_1.a), vec3<bool>(arg_1.a, true, false), arg_1.a), select(vec3<bool>(var_0.a, false, true), select(vec3<bool>(var_0.a, false, true), vec3<bool>(true, false, arg_1.a), arg_1.a), any(vec3<bool>(var_0.a, arg_1.a, arg_1.a))), select(select(vec3<bool>(arg_1.a, true, true), vec3<bool>(false, false, arg_1.a), vec3<bool>(false, false, var_0.a)), select(vec3<bool>(true, true, false), vec3<bool>(arg_1.a, true, arg_1.a), arg_1.a), !vec3<bool>(true, var_0.a, arg_1.a))), select(vec3<bool>(any(vec3<bool>(var_0.a, true, arg_1.a)), var_0.a, global3[_wgslsmith_index_u32(4294967295u, 9u)] >= -28850i), !(!vec3<bool>(arg_1.a, var_0.a, arg_1.a)), vec3<bool>(arg_1.a || var_0.a, false, true)), any(vec4<bool>(select(arg_1.a, var_0.a, var_0.a), false, true, false))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: i32, arg_3: vec3<bool>) -> bool {
    global3 = array<i32, 9>();
    var var_0 = _wgslsmith_mult_vec2_u32(global0.c.b.ww >> (min(select(vec2<u32>(30021u, 59220u), vec2<u32>(global0.a.b.x, 1u) << (vec2<u32>(10405u, global1[_wgslsmith_index_u32(global2.x, 21u)]) % vec2<u32>(32u)), select(arg_1.yx, arg_0, arg_1.x)), ~(~vec2<u32>(global2.x, 25052u))) % vec2<u32>(32u)), ~reverseBits(~global0.a.b.yx));
    global1 = array<u32, 21>();
    let var_1 = arg_0.x;
    var var_2 = -51156i;
    return any(select(!select(vec4<bool>(arg_0.x, true, false, var_1), select(vec4<bool>(true, false, true, arg_1.x), vec4<bool>(true, true, arg_3.x, var_1), var_1), !vec4<bool>(arg_3.x, false, true, false)), vec4<bool>(false, all(!vec3<bool>(false, var_1, var_1)), false, select(func_3(Struct_2(global0.a, global0.b, global0.c), global4[_wgslsmith_index_u32(5918u, 2u)], global0.a.a), true, true)), true));
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = (global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(global0.c.b, global0.a.b) >> (~global0.c.b.x % 32u), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.c.b.x, countOneBits(global2.x)), 21u)]), 9u)] | (((global0.b.x << (global1[_wgslsmith_index_u32(global0.c.b.x, 21u)] % 32u)) << (67051u % 32u)) | select(abs(global3[_wgslsmith_index_u32(u_input.a, 9u)]), ~global3[_wgslsmith_index_u32(131432u, 9u)], func_2(vec2<bool>(true, true), vec3<bool>(true, false, false), global0.b.x, vec3<bool>(true, false, false))))) <= global3[_wgslsmith_index_u32(1u, 9u)];
    let var_1 = vec3<i32>(countOneBits(_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(global0.a.b.x, 9u)], -1i)), -global0.b.x ^ firstLeadingBit(global3[_wgslsmith_index_u32(global0.c.b.x, 9u)]), abs(global0.b.x));
    var var_2 = ~global0.c.b.x;
    let var_3 = !(global2.x >= global2.x);
    let var_4 = _wgslsmith_f_op_f32(-arg_0);
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a.a * global0.a.a)) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(global0.a.a, vec2<f32>(var_4, -1000f), vec2<bool>(var_3, var_3))), global0.a.a))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 0u, global0.c.b.x, 49839u) << (global0.a.b % vec4<u32>(32u)), reverseBits(global0.a.b))), global0.b, global0.c);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: u32, arg_3: i32) -> vec2<i32> {
    let var_0 = Struct_3(false, min(global0.a.b.yyw, _wgslsmith_add_vec3_u32(global0.c.b.yww, firstLeadingBit(vec3<u32>(u_input.a, arg_2, 4294967295u) >> (vec3<u32>(4294967295u, arg_1.c.b.x, 2180u) % vec3<u32>(32u))))), global0.a, _wgslsmith_sub_vec4_i32(abs(firstTrailingBit(vec4<i32>(arg_1.b.x, global3[_wgslsmith_index_u32(27508u, 9u)], global3[_wgslsmith_index_u32(4294967295u, 9u)], 1i) >> (vec4<u32>(1u, 0u, 56320u, global1[_wgslsmith_index_u32(arg_1.a.b.x, 21u)]) % vec4<u32>(32u)))), vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(global0.b, arg_1.b), abs(global0.b)), max(0i, -global0.b.x), arg_3, arg_3)), func_1(arg_1.c.a.x));
    global1 = array<u32, 21>();
    global2 = ~(firstTrailingBit(var_0.e.a.b.xz) >> (arg_1.c.b.xw % vec2<u32>(32u)));
    global0 = Struct_2(func_1(-661f).c, var_0.d.xw, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.c.a.x, var_0.c.a.x)))), _wgslsmith_mult_vec4_u32(global0.a.b, arg_1.a.b)));
    var var_1 = _wgslsmith_div_f32(arg_1.c.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(~(vec2<i32>(-1i) * -arg_1.b), (vec2<i32>(arg_3, 67269i) ^ global0.b) ^ ~global0.b), reverseBits(var_0.e.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(global2.x);
    let var_1 = func_4(firstLeadingBit(-23249i), func_1(700f), 1u >> (_wgslsmith_clamp_u32(1u, 4294967295u, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(0u, 21u)], global2.x)) % 32u), _wgslsmith_add_i32(2147483647i, -1i)) >> (reverseBits(global0.a.b.xz >> (global0.a.b.zz % vec2<u32>(32u))) % vec2<u32>(32u));
    global1 = array<u32, 21>();
    global4 = array<Struct_3, 2>();
    var var_2 = abs(vec4<u32>(select(countOneBits(1u | global0.a.b.x), abs(reverseBits(global0.a.b.x)), true), global0.c.b.x, u_input.a, 1u));
    var var_3 = vec2<u32>(0u, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-531f + global0.a.a.x));
}

