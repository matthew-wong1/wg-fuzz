struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29>;

var<private> global1: vec3<i32>;

var<private> global2: array<u32, 8>;

var<private> global3: array<vec4<bool>, 26> = array<vec4<bool>, 26>(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true));

var<private> global4: vec4<f32> = vec4<f32>(1258f, -1230f, 305f, 1608f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<i32>) -> Struct_4 {
    let var_0 = !(!(arg_0.b.x | arg_0.b.x));
    return Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, global4.x, -910f))), global4.xzy) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(global4.x)), -1000f, _wgslsmith_f_op_f32(-global4.x)) + vec3<f32>(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(-432f - global4.x), _wgslsmith_f_op_f32(sign(1741f))))), vec3<bool>(select(global4.x <= global4.x, true, arg_1.b.x) && true, true, false), arg_0.d);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4) -> Struct_5 {
    let var_0 = u_input.b.x;
    global4 = arg_0;
    var var_1 = any(!(!select(!arg_1.b.xx, select(vec2<bool>(arg_1.b.x, arg_1.b.x), arg_1.b.zz, arg_1.b.xy), !arg_1.b.x)));
    var var_2 = -1024f;
    let var_3 = arg_1;
    return Struct_5(-887f);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5, arg_2: i32, arg_3: bool) -> vec3<i32> {
    var var_0 = 1i;
    let var_1 = ~13598i;
    global0 = array<Struct_3, 29>();
    var var_2 = Struct_1(min(var_1 ^ (-19599i << (~4294967295u % 32u)), 67476i));
    let var_3 = var_1;
    return _wgslsmith_sub_vec3_i32((vec3<i32>(14263i, ~(-45697i), global1.x) | -vec3<i32>(-28494i, 0i, 36609i)) >> (~_wgslsmith_mult_vec3_u32(u_input.b >> (vec3<u32>(global2[_wgslsmith_index_u32(43008u, 8u)], 1u, u_input.b.x) % vec3<u32>(32u)), u_input.b) % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(-1i) * -reverseBits(vec3<i32>(u_input.a, -52080i, arg_2))));
}

fn func_1() -> Struct_5 {
    var var_0 = u_input.b;
    global1 = func_4(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, -831f, 1331f, -805f)))), func_2(global0[_wgslsmith_index_u32(var_0.x, 29u)], global0[_wgslsmith_index_u32(0u, 29u)], ~max(vec3<i32>(-2147483647i, 1i, u_input.a), vec3<i32>(1i, global1.x, global1.x)))), Struct_5(-1521f), -2147483647i, func_2(global0[_wgslsmith_index_u32(4294967295u, 29u)], Struct_3(func_2(global0[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(1u, 8u)], 29u)], global0[_wgslsmith_index_u32(select(33208u, 45784u, true), 29u)], select(vec3<i32>(u_input.a, u_input.a, -18134i), vec3<i32>(global1.x, 1i, u_input.a), vec3<bool>(true, false, false))).c, select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, global2[_wgslsmith_index_u32(1u, 8u)]), vec3<u32>(global2[_wgslsmith_index_u32(var_0.x, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)], 90380u)), Struct_1(_wgslsmith_mult_i32(global1.x, u_input.a)), Struct_1(1i)), firstTrailingBit(~vec3<i32>(-2147483647i, global1.x, 43860i)) ^ ~abs(vec3<i32>(global1.x, global1.x, u_input.a))).b.x);
    let var_1 = global0[_wgslsmith_index_u32(var_0.x, 29u)];
    let var_2 = global2[_wgslsmith_index_u32(abs(46469u), 8u)];
    var_0 = ~vec3<u32>(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(36104u, 23926u, 43097u), u_input.b)), _wgslsmith_clamp_u32(var_0.x, var_0.x, 46206u) & reverseBits(4294967295u), _wgslsmith_dot_vec3_u32(u_input.b, countOneBits(vec3<u32>(u_input.b.x, 4294967295u, 0u)))) & u_input.b;
    return Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x - _wgslsmith_div_f32(-1026f, -2417f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = func_1();
    global1 = select(countOneBits(reverseBits(select(vec3<i32>(0i, -44435i, global1.x), vec3<i32>(1i, u_input.a, -1i), vec3<bool>(false, false, true))) ^ select(-vec3<i32>(global1.x, 5111i, u_input.a), select(vec3<i32>(global1.x, 17622i, 0i), vec3<i32>(global1.x, global1.x, u_input.a), false), true)), vec3<i32>(-1i) * -vec3<i32>(~(-2147483647i), _wgslsmith_mult_i32(-93193i, global1.x), -82655i), !var_0);
    global0 = array<Struct_3, 29>();
    var var_2 = vec2<u32>(_wgslsmith_dot_vec2_u32(~select(~u_input.b.xz, firstTrailingBit(u_input.b.xx), global2[_wgslsmith_index_u32(u_input.b.x, 8u)] <= 1u), reverseBits(vec2<u32>(~global2[_wgslsmith_index_u32(4294967295u, 8u)], ~global2[_wgslsmith_index_u32(1u, 8u)]))), ~reverseBits(u_input.b.x >> (1u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(u_input.a, -12578i, -1i, 0i) ^ (abs(vec4<i32>(u_input.a, 2147483647i, global1.x, global1.x)) ^ -vec4<i32>(0i, u_input.a, u_input.a, global1.x)), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(26253i, -2147483647i, global1.x, 2147483647i)), firstTrailingBit(vec4<i32>(2147483647i, u_input.a, -14591i, global1.x))) << (firstLeadingBit(select(vec4<u32>(global2[_wgslsmith_index_u32(67519u, 8u)], 0u, 4294967295u, 1u), vec4<u32>(u_input.b.x, global2[_wgslsmith_index_u32(21953u, 8u)], 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(15895u, 8u)], 8u)]), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6625u, 8u)], 26u)])) % vec4<u32>(32u)), global3[_wgslsmith_index_u32(4294967295u, 26u)]), u_input.b.x, ~u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.a, -212f, -489f, -610f)))))), abs(~global1.x));
}

