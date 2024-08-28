struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_3, 5>;

var<private> global2: vec4<u32>;

var<private> global3: bool;

var<private> global4: array<Struct_1, 29>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = false;
    global3 = global0.a.b.a.x;
    var_0 = arg_0.a.b.a.x;
    global1 = array<Struct_3, 5>();
    let var_1 = global0.a;
    return 1u;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3) -> vec2<f32> {
    let var_0 = arg_0.a.b.a.x;
    global2 = vec4<u32>(0u, 1u, _wgslsmith_dot_vec2_u32(global2.wy, ~u_input.b), ~17704u >> (_wgslsmith_add_u32(firstLeadingBit(func_3(Struct_3(Struct_2(vec2<f32>(273f, arg_0.a.b.b), Struct_1(vec2<bool>(true, arg_2.a.b.a.x), arg_1.a.a.x, -562f))))), ~global2.x) % 32u));
    let var_1 = true;
    let var_2 = 1u;
    var var_3 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(~(countOneBits(vec4<i32>(-32444i, -68368i, u_input.e.x, -1i)) | -vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d)), ((vec4<i32>(u_input.c.x, 53050i, u_input.c.x, u_input.c.x) << (vec4<u32>(u_input.b.x, 0u, global2.x, 31812u) % vec4<u32>(32u))) | ~vec4<i32>(0i, 2147483647i, -2147483647i, u_input.e.x)) | reverseBits(vec4<i32>(-72851i, u_input.e.x, -1i, 1i) >> (vec4<u32>(1074u, 17167u, 42551u, 0u) % vec4<u32>(32u)))), u_input.c.x, 1i);
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-700f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a.a.x), _wgslsmith_f_op_f32(-arg_2.a.a.x))))), 1000f);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: u32) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.a.b.b, 162f), vec2<f32>(-270f, 2366f))) - _wgslsmith_f_op_vec2_f32(max(global0.a.a, global0.a.a))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a.a - global0.a.a), _wgslsmith_f_op_vec2_f32(-global0.a.a))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(global0.a.a)), vec2<f32>(global0.a.b.c, -326f))) - _wgslsmith_f_op_vec2_f32(func_2(global1[_wgslsmith_index_u32(u_input.b.x, 5u)], global1[_wgslsmith_index_u32(reverseBits(1795u), 5u)], Struct_3(global0.a))))), global0.a.b);
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(297f, 128f), _wgslsmith_f_op_vec2_f32(func_2(global1[_wgslsmith_index_u32(global2.x, 5u)], global1[_wgslsmith_index_u32(arg_0.x, 5u)], global1[_wgslsmith_index_u32(42489u, 5u)]))), var_0.a)), var_0.b));
    var var_2 = abs(-firstTrailingBit(_wgslsmith_mult_i32(arg_1.x, arg_1.x)) << (global2.x % 32u));
    var var_3 = select(select(vec3<bool>(true, !(var_1.a.b.a.x & true), true), !select(select(vec3<bool>(var_0.b.a.x, false, global0.a.b.a.x), vec3<bool>(true, true, var_0.b.a.x), vec3<bool>(true, true, var_0.b.a.x)), select(vec3<bool>(false, var_1.a.b.a.x, var_0.b.a.x), vec3<bool>(false, true, false), var_0.b.a.x), !vec3<bool>(false, false, var_0.b.a.x)), global0.a.b.a.x), select(select(vec3<bool>(var_0.b.a.x, arg_0.x < arg_2, true), select(select(vec3<bool>(false, global0.a.b.a.x, false), vec3<bool>(var_0.b.a.x, true, global0.a.b.a.x), vec3<bool>(false, var_0.b.a.x, var_0.b.a.x)), vec3<bool>(false, false, global0.a.b.a.x), true), select(!global0.a.b.a.x, true, all(var_0.b.a))), !(!(!vec3<bool>(false, var_1.a.b.a.x, true))), global0.a.b.a.x), false);
    let var_4 = min(-6393i, (1i ^ (-u_input.e.x & u_input.e.x)) >> (min(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(14402u, global2.x, 0u, u_input.a.x), vec4<u32>(1u, arg_2, arg_0.x, arg_0.x) | vec4<u32>(arg_0.x, arg_0.x, u_input.a.x, 275u))) % 32u));
    return ~4294967295u >> (_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_2, 15386u) >> (u_input.b % vec2<u32>(32u)), vec2<u32>(u_input.b.x, arg_2)) | reverseBits(global2.yy), reverseBits(~(~arg_0.zz))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<u32>(abs(~4294967295u), 4294967295u, _wgslsmith_dot_vec3_u32(u_input.a, reverseBits(vec3<u32>(~7220u, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.b)))), _wgslsmith_mult_u32(abs(func_1(u_input.a, -vec4<i32>(u_input.e.x, u_input.e.x, u_input.d, -17910i), 60125u)), firstLeadingBit(u_input.b.x)));
    let var_0 = global0.a;
    let var_1 = 1f;
    global3 = global0.a.b.a.x;
    var var_2 = !global0.a.b.a.x;
    var_2 = (~(~(global2.x << (global2.x % 32u))) | global2.x) >= func_3(global1[_wgslsmith_index_u32(firstLeadingBit(~(~105093u)), 5u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(u_input.c, _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, u_input.d, -26546i), firstLeadingBit(u_input.c))), u_input.c), firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.d, u_input.e.x), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, u_input.e.x, u_input.e.x), vec4<i32>(u_input.e.x, u_input.c.x, u_input.c.x, 1i)))) >> (~firstTrailingBit(vec4<u32>(29543u, u_input.b.x, 5164u, global2.x)) % vec4<u32>(32u)));
}

