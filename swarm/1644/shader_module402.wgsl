struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: Struct_3,
    d: Struct_1,
    e: f32,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18>;

var<private> global1: vec3<i32> = vec3<i32>(30549i, -239i, 0i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> i32 {
    var var_0 = !(!arg_1) != arg_0.d.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.b.d) + _wgslsmith_f_op_f32(min(510f, -1333f))), arg_0.a.b.d, arg_0.a.b.d, arg_0.b.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.b.x, -1410f, 791f, arg_0.a.b.d), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.b.x, arg_0.a.a.d, arg_0.b.x, arg_0.a.b.d))))))));
    let var_2 = 4294967295u;
    global0 = array<Struct_3, 18>();
    let var_3 = arg_0.d;
    return ~arg_0.a.b.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: vec2<f32>) -> vec3<i32> {
    global1 = ~arg_0.a;
    global0 = array<Struct_3, 18>();
    var var_0 = Struct_4(global0[_wgslsmith_index_u32(arg_2.x, 18u)], countOneBits(-vec4<i32>(i32(-1i) * -8664i, func_3(global0[_wgslsmith_index_u32(25347u, 18u)], arg_0.c.x), arg_0.a.x, _wgslsmith_clamp_i32(global1.x, 37421i, 5404i))), arg_1.a, arg_1.a.a.b, -844f);
    let var_1 = firstTrailingBit(arg_2.x);
    let var_2 = vec4<f32>(var_0.c.a.b.d, _wgslsmith_f_op_f32(ceil(var_0.c.a.a.d)), -651f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(arg_1.e * -1656f))));
    return reverseBits(vec3<i32>(firstTrailingBit(1i), arg_1.b.x, arg_0.a.x));
}

fn func_1() -> vec4<bool> {
    var var_0 = _wgslsmith_add_u32(~(~max(max(1u, u_input.b), ~u_input.b)), u_input.b);
    let var_1 = u_input.b;
    global1 = ~countOneBits(select(_wgslsmith_add_vec3_i32(abs(vec3<i32>(-2147483647i, global1.x, -1i)), func_2(Struct_1(vec3<i32>(global1.x, global1.x, global1.x), u_input.a, vec2<bool>(false, true), 471f), Struct_4(Struct_3(Struct_2(Struct_1(vec3<i32>(-12082i, global1.x, global1.x), u_input.a, vec2<bool>(true, false), 1297f), Struct_1(vec3<i32>(-8967i, -29275i, 18509i), u_input.a, vec2<bool>(true, false), -1502f)), vec3<f32>(1919f, 281f, 853f), u_input.a.x, vec3<bool>(false, false, true)), vec4<i32>(global1.x, global1.x, 2147483647i, -1i), Struct_3(Struct_2(Struct_1(vec3<i32>(20127i, -2147483647i, global1.x), vec3<u32>(60543u, u_input.a.x, u_input.a.x), vec2<bool>(true, false), 264f), Struct_1(vec3<i32>(global1.x, global1.x, 2147483647i), u_input.a, vec2<bool>(true, false), -1846f)), vec3<f32>(-1753f, 789f, -357f), var_1, vec3<bool>(true, true, true)), Struct_1(vec3<i32>(global1.x, global1.x, global1.x), vec3<u32>(98015u, 4541u, u_input.b), vec2<bool>(false, true), 767f), 280f), u_input.a.zz, vec2<f32>(1566f, -592f))), min(_wgslsmith_add_vec3_i32(vec3<i32>(-1720i, global1.x, global1.x), vec3<i32>(global1.x, 1i, global1.x)), reverseBits(vec3<i32>(global1.x, global1.x, 29489i))), true));
    var var_2 = u_input.a << (u_input.a % vec3<u32>(32u));
    var_2 = u_input.a;
    return select(vec4<bool>(false, all(vec3<bool>(true, true, 23682i >= global1.x)), ~global1.x > abs(-41934i), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true)))), vec4<bool>(abs(reverseBits(var_1)) < ~u_input.a.x, any(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), true)), true, true), select(vec4<bool>(true, _wgslsmith_dot_vec4_u32(vec4<u32>(71780u, 0u, var_1, var_1), vec4<u32>(10463u, 4294967295u, 66202u, 4294967295u)) >= (u_input.b << (u_input.a.x % 32u)), true, !(global1.x <= global1.x)), vec4<bool>(any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false))), select(true, all(vec2<bool>(false, true)), 72724u < var_2.x), any(vec3<bool>(false, false, true)), all(vec4<bool>(true, true, true, true))), !(!all(vec3<bool>(false, true, true)))));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec4<i32>) -> vec3<f32> {
    global0 = array<Struct_3, 18>();
    let var_0 = _wgslsmith_dot_vec2_i32(select(arg_2.wz, vec2<i32>(arg_2.x & ~global1.x, _wgslsmith_add_i32(arg_0.a.a.a.x, arg_2.x) | (i32(-1i) * -12936i)), select(!select(vec2<bool>(true, arg_0.d.x), arg_0.d.zz, arg_0.d.xy), !(!vec2<bool>(false, arg_0.d.x)), func_1().wx)), -countOneBits(abs(func_2(arg_0.a.a, Struct_4(Struct_3(Struct_2(Struct_1(vec3<i32>(arg_0.a.b.a.x, arg_0.a.b.a.x, global1.x), vec3<u32>(arg_0.c, arg_0.a.b.b.x, u_input.a.x), vec2<bool>(true, false), 2215f), arg_0.a.a), vec3<f32>(1000f, arg_0.b.x, arg_0.b.x), arg_0.a.b.b.x, vec3<bool>(false, arg_1, true)), vec4<i32>(arg_0.a.a.a.x, global1.x, global1.x, arg_0.a.b.a.x), Struct_3(arg_0.a, arg_0.b, 1u, vec3<bool>(arg_0.d.x, arg_1, arg_1)), Struct_1(vec3<i32>(0i, 0i, 9864i), arg_0.a.b.b, vec2<bool>(arg_0.a.a.c.x, false), 852f), arg_0.a.b.d), vec2<u32>(arg_0.a.a.b.x, 4294967295u), vec2<f32>(arg_0.a.b.d, 118f)).zy)));
    var var_1 = arg_0.b.x;
    var var_2 = Struct_3(arg_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1703f), -1246f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(291f, arg_0.b.x)))), ~1u, vec3<bool>(any(vec4<bool>(arg_0.d.x, false, true, arg_0.c <= 50043u)), true, true));
    let var_3 = !func_1().wy;
    return vec3<f32>(410f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -229f))))), _wgslsmith_f_op_f32(step(arg_0.a.a.d, -1209f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = 346f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(func_4(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], all(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(false, true, true, true), func_1())), min(-vec4<i32>(global1.x, 17582i, global1.x, 1i), -(~vec4<i32>(global1.x, global1.x, global1.x, -2147483647i))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1138f, _wgslsmith_f_op_f32(f32(-1f) * -675f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(483f, -598f), _wgslsmith_f_op_f32(step(1077f, 2262f)))), -268f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, -304f, -319f)))))));
}

