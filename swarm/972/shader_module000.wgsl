struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 12> = array<vec2<bool>, 12>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global1: vec4<i32>;

var<private> global2: Struct_3 = Struct_3(Struct_1(vec4<i32>(0i, 2147483647i, -34752i, 31015i), 0u), -15423i, -1i, 13100i, Struct_2(vec2<u32>(4294967295u, 12842u)));

var<private> global3: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(Struct_1(vec4<i32>(-1i, 41655i, i32(-2147483648), -1i), 1u), -19673i, -1i, i32(-2147483648), Struct_2(vec2<u32>(38695u, 21855u))), Struct_3(Struct_1(vec4<i32>(0i, 2147483647i, 2147483647i, -1i), 7421u), -1i, -19718i, -8663i, Struct_2(vec2<u32>(43793u, 69762u))), Struct_3(Struct_1(vec4<i32>(-1i, -1i, 17234i, -56675i), 4294967295u), -1i, -22010i, 2147483647i, Struct_2(vec2<u32>(1u, 65548u))), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), -1i, -53418i, -45325i), 58185u), 18035i, -13676i, 0i, Struct_2(vec2<u32>(4875u, 4294967295u))), Struct_3(Struct_1(vec4<i32>(-10701i, i32(-2147483648), 18022i, -36335i), 4294967295u), 23137i, -1i, 1i, Struct_2(vec2<u32>(10666u, 0u))), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), 1i, -1i, 0i), 1u), i32(-2147483648), 0i, 18039i, Struct_2(vec2<u32>(783u, 26134u))), Struct_3(Struct_1(vec4<i32>(-61387i, 1i, i32(-2147483648), 56379i), 40393u), -1i, -1i, 2147483647i, Struct_2(vec2<u32>(0u, 1u))), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), -60879i, 31139i, 21042i), 63943u), -37645i, 1i, 1i, Struct_2(vec2<u32>(1u, 0u))), Struct_3(Struct_1(vec4<i32>(2147483647i, 0i, 33513i, i32(-2147483648)), 0u), -38540i, -1i, 364i, Struct_2(vec2<u32>(0u, 20660u))), Struct_3(Struct_1(vec4<i32>(28645i, 102i, 37975i, -1i), 0u), 9108i, 0i, i32(-2147483648), Struct_2(vec2<u32>(36586u, 56608u))), Struct_3(Struct_1(vec4<i32>(-21855i, 0i, i32(-2147483648), 2147483647i), 56337u), 0i, 2147483647i, -40887i, Struct_2(vec2<u32>(2559u, 0u))), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), 26962i, 0i, 0i), 17405u), -57650i, 1i, 2147483647i, Struct_2(vec2<u32>(0u, 0u))), Struct_3(Struct_1(vec4<i32>(-15858i, -17597i, 1i, 1i), 1u), 0i, 1i, 3647i, Struct_2(vec2<u32>(1u, 47249u))), Struct_3(Struct_1(vec4<i32>(1i, -3681i, -19576i, 11426i), 1u), -1i, -10087i, -1i, Struct_2(vec2<u32>(1u, 14395u))), Struct_3(Struct_1(vec4<i32>(-1i, 1i, 2147483647i, 8195i), 65189u), 2147483647i, 40475i, -9114i, Struct_2(vec2<u32>(0u, 52554u))), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), -1i, 87995i, -13103i), 76263u), -45170i, 0i, -49266i, Struct_2(vec2<u32>(0u, 0u))));

var<private> global4: vec3<u32> = vec3<u32>(0u, 40645u, 40419u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> vec2<i32> {
    var var_0 = global2.a;
    var var_1 = global3[_wgslsmith_index_u32(16837u, 16u)];
    global2 = global3[_wgslsmith_index_u32(~(~var_0.b), 16u)];
    let var_2 = global2.a.a.x;
    var_1 = Struct_3(global2.a, min(_wgslsmith_add_i32(_wgslsmith_add_i32(var_1.d, -55570i), var_0.a.x), ~(-1i)), -45476i, 2147483647i, Struct_2(vec2<u32>(min(var_1.a.b, 45733u), u_input.b)));
    return vec2<i32>(abs(global1.x) >> (var_0.b % 32u), -(~_wgslsmith_dot_vec4_i32(var_0.a, vec4<i32>(17605i, 0i, 7354i, 1i))));
}

fn func_3() -> i32 {
    var var_0 = vec4<f32>(-1000f, -406f, -170f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(921f)) + _wgslsmith_f_op_f32(-875f + _wgslsmith_div_f32(242f, -623f)))));
    var var_1 = Struct_2(global2.e.a);
    global1 = vec4<i32>(reverseBits(-1i), 72117i, 1i, abs(-(~1i)));
    var_1 = Struct_2(u_input.c.zy);
    let var_2 = all(vec2<bool>(any(vec4<bool>(true, u_input.a.x == global2.b, any(global0[_wgslsmith_index_u32(4294967295u, 12u)]), all(vec4<bool>(false, false, true, false)))), true));
    return global2.c;
}

fn func_2(arg_0: vec2<i32>) -> i32 {
    global2 = Struct_3(global2.a, u_input.a.x, 5637i, _wgslsmith_mult_i32(func_3(), -(~_wgslsmith_sub_i32(u_input.a.x, u_input.a.x))), global2.e);
    var var_0 = ~(reverseBits(global2.e.a) << (u_input.c.xw % vec2<u32>(32u)));
    global3 = array<Struct_3, 16>();
    global3 = array<Struct_3, 16>();
    var_0 = vec2<u32>(17307u, 39104u);
    return firstLeadingBit(-1i) | reverseBits(~u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.e;
    let var_1 = 0u;
    global1 = select(~vec4<i32>(func_2(func_1()), -15715i, 1i, max(global2.d ^ 1i, -86005i | global1.x)), _wgslsmith_sub_vec4_i32(abs(-(global2.a.a << (vec4<u32>(31651u, u_input.c.x, 4294967295u, 19675u) % vec4<u32>(32u)))), global2.a.a >> (vec4<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c), 31287u, ~global2.a.b) % vec4<u32>(32u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-606f))))) < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-776f, 614f)), _wgslsmith_div_f32(1068f, -230f), true)))));
    let var_2 = 4294967295u;
    let var_3 = Struct_3(Struct_1(u_input.a, u_input.b), countOneBits(~u_input.a.x), ~firstTrailingBit(-39621i), global1.x, global2.e);
    var var_4 = var_3.a;
    global2 = Struct_3(Struct_1(select(vec4<i32>(global1.x, select(var_3.a.a.x, global1.x, false), var_4.a.x, _wgslsmith_sub_i32(1i, u_input.a.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(global1.x, 32131i, var_3.b, -25885i), reverseBits(vec4<i32>(56760i, global2.a.a.x, var_3.b, 1i))), select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), true))), ~85524u), func_1().x, 14464i, global1.x, Struct_2(~global2.e.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, var_4.a.x, func_1().x, -global1.x), 1f, -1000f, -694f);
}

