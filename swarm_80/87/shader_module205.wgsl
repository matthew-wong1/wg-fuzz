struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<i32>(-1i, -52091i, 13954i, 17845i), vec3<i32>(-22002i, 2147483647i, 2147483647i), vec2<u32>(4294967295u, 13342u)), Struct_1(vec4<i32>(-40191i, -17163i, 2147483647i, -17209i), vec3<i32>(1i, 0i, 0i), vec2<u32>(0u, 44593u)), Struct_1(vec4<i32>(-36360i, -1i, 25134i, -1i), vec3<i32>(-733i, -7997i, 2147483647i), vec2<u32>(4294967295u, 0u)));

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec4<i32>(36947i, -1i, -12306i, 0i), vec3<i32>(-26069i, 1755i, 0i), vec2<u32>(21463u, 4294967295u)), Struct_1(vec4<i32>(-61i, 40834i, 16753i, -6841i), vec3<i32>(38805i, -1i, -26626i), vec2<u32>(4294967295u, 96140u)), Struct_1(vec4<i32>(20435i, -34059i, -45977i, 0i), vec3<i32>(-3401i, -21873i, 2147483647i), vec2<u32>(4294967295u, 50303u)), Struct_1(vec4<i32>(-16401i, 0i, 0i, i32(-2147483648)), vec3<i32>(-55543i, 44964i, 71901i), vec2<u32>(4294967295u, 0u)), Struct_1(vec4<i32>(36691i, 13041i, -7511i, -30765i), vec3<i32>(-40668i, i32(-2147483648), 1i), vec2<u32>(7758u, 61830u)), Struct_1(vec4<i32>(-50219i, -1i, 24934i, 1i), vec3<i32>(-1611i, i32(-2147483648), -36361i), vec2<u32>(40158u, 33827u)), Struct_1(vec4<i32>(i32(-2147483648), -13814i, -1i, -12079i), vec3<i32>(28406i, 1711i, 2147483647i), vec2<u32>(108106u, 1u)), Struct_1(vec4<i32>(39621i, -1i, -1i, 10343i), vec3<i32>(45373i, i32(-2147483648), 1i), vec2<u32>(4294967295u, 16577u)), Struct_1(vec4<i32>(-8017i, 1038i, -1i, 0i), vec3<i32>(21195i, -1i, 2147483647i), vec2<u32>(10665u, 30987u)), Struct_1(vec4<i32>(-10581i, -66275i, -45978i, -1i), vec3<i32>(-14824i, -1i, -16935i), vec2<u32>(21891u, 4294967295u)), Struct_1(vec4<i32>(8446i, 2147483647i, 0i, -1i), vec3<i32>(37283i, 40014i, i32(-2147483648)), vec2<u32>(18519u, 0u)), Struct_1(vec4<i32>(13821i, -46777i, -43026i, 34925i), vec3<i32>(-48422i, i32(-2147483648), -1i), vec2<u32>(67908u, 37150u)), Struct_1(vec4<i32>(-1i, -1i, 6703i, 51345i), vec3<i32>(6138i, 22102i, i32(-2147483648)), vec2<u32>(4294967295u, 87089u)), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 5834i), vec3<i32>(i32(-2147483648), 37743i, -7598i), vec2<u32>(4294967295u, 0u)), Struct_1(vec4<i32>(i32(-2147483648), -27460i, 2147483647i, i32(-2147483648)), vec3<i32>(0i, -1i, -50093i), vec2<u32>(0u, 4294967295u)), Struct_1(vec4<i32>(-1i, 43233i, -1i, i32(-2147483648)), vec3<i32>(22676i, -15453i, 63152i), vec2<u32>(1u, 4294967295u)), Struct_1(vec4<i32>(i32(-2147483648), 0i, 0i, -38621i), vec3<i32>(0i, 43235i, -6797i), vec2<u32>(1u, 0u)), Struct_1(vec4<i32>(1039i, 78997i, -7572i, -16514i), vec3<i32>(33599i, 0i, 2360i), vec2<u32>(0u, 6835u)), Struct_1(vec4<i32>(0i, -27453i, 1i, 17250i), vec3<i32>(38391i, -2490i, 2147483647i), vec2<u32>(4294967295u, 0u)), Struct_1(vec4<i32>(0i, -16667i, -29199i, 8553i), vec3<i32>(-53275i, 63279i, 2147483647i), vec2<u32>(51012u, 3517u)), Struct_1(vec4<i32>(1i, 10961i, i32(-2147483648), 1i), vec3<i32>(-1i, -33203i, -10696i), vec2<u32>(21755u, 66538u)), Struct_1(vec4<i32>(13209i, 1i, -1i, 39469i), vec3<i32>(i32(-2147483648), i32(-2147483648), 13307i), vec2<u32>(6078u, 41945u)), Struct_1(vec4<i32>(i32(-2147483648), 22611i, 2147483647i, -3118i), vec3<i32>(-22507i, 17609i, -49522i), vec2<u32>(4294967295u, 0u)), Struct_1(vec4<i32>(i32(-2147483648), -1i, -1i, 1i), vec3<i32>(28290i, 2147483647i, -37166i), vec2<u32>(45390u, 1u)), Struct_1(vec4<i32>(-1i, -1i, -12462i, 5413i), vec3<i32>(-21161i, 2147483647i, -78240i), vec2<u32>(11107u, 6251u)), Struct_1(vec4<i32>(-33554i, 2147483647i, -1i, -41801i), vec3<i32>(-1i, -1i, 19768i), vec2<u32>(1u, 4294967295u)), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 1i, 64936i), vec3<i32>(1i, -19533i, 2007i), vec2<u32>(1u, 48586u)), Struct_1(vec4<i32>(-1i, 62191i, 1558i, -16630i), vec3<i32>(8507i, 2147483647i, -1i), vec2<u32>(20683u, 4294967295u)));

var<private> global2: array<vec2<i32>, 2> = array<vec2<i32>, 2>(vec2<i32>(i32(-2147483648), 22853i), vec2<i32>(8612i, 2147483647i));

var<private> global3: Struct_1 = Struct_1(vec4<i32>(-15118i, 0i, i32(-2147483648), 22039i), vec3<i32>(-42822i, i32(-2147483648), -1i), vec2<u32>(72831u, 23010u));

var<private> global4: array<vec4<i32>, 15>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_2(Struct_1(vec4<i32>(firstTrailingBit(91158i ^ arg_0.b.x), _wgslsmith_div_i32(global3.b.x, -arg_0.a.x), -6939i << (min(arg_0.c.x, 42119u) % 32u), ~abs(1i)), min(_wgslsmith_clamp_vec3_i32(global3.a.ywz, arg_0.a.www, global0.b.b), _wgslsmith_div_vec3_i32(vec3<i32>(global0.c.b.x, -1i, -28246i), vec3<i32>(2147483647i, arg_0.a.x, -2147483647i))) & (_wgslsmith_mod_vec3_i32(global3.a.zzw, vec3<i32>(-3484i, -70112i, global0.c.a.x)) & ~global0.c.b), select(~global3.c, select(global0.b.c, arg_0.c, vec2<bool>(true, true)), true)), Struct_1(vec4<i32>(global3.b.x, -37441i, global0.b.b.x, _wgslsmith_mod_i32(min(arg_0.b.x, global3.a.x), global3.a.x)), (countOneBits(vec3<i32>(arg_0.a.x, arg_0.a.x, global3.b.x)) >> (firstTrailingBit(vec3<u32>(0u, 4294967295u, arg_0.c.x)) % vec3<u32>(32u))) | max(firstTrailingBit(arg_0.b), vec3<i32>(35636i, 1i, arg_0.b.x)), vec2<u32>(~firstTrailingBit(1u), 1u)), arg_0);
    global3 = global0.b;
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-169f + _wgslsmith_f_op_f32(1000f + 305f)))))));
    var var_2 = Struct_1(vec4<i32>(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-6567i, global0.c.a.x)), ~_wgslsmith_mult_vec2_i32(var_0.c.b.yx, global2[_wgslsmith_index_u32(global3.c.x, 2u)])), _wgslsmith_mod_i32(global0.a.a.x, var_0.a.b.x), -1i << ((4294967295u ^ ~arg_0.c.x) % 32u), -(~global0.a.a.x)), global0.b.a.zzy, global0.a.c | (~vec2<u32>(global3.c.x, 49278u) ^ abs(~u_input.a)));
    var var_3 = _wgslsmith_mod_vec3_u32(~(~(~select(vec3<u32>(0u, var_2.c.x, global0.c.c.x), vec3<u32>(14196u, 1u, 4294967295u), true))), _wgslsmith_clamp_vec3_u32(min(vec3<u32>(global0.b.c.x, ~global3.c.x, u_input.a.x), ~vec3<u32>(1u, arg_0.c.x, global3.c.x)), ~min(vec3<u32>(global3.c.x, global0.b.c.x, 0u), vec3<u32>(global0.b.c.x, u_input.a.x, 32383u) >> (vec3<u32>(1u, u_input.a.x, arg_0.c.x) % vec3<u32>(32u))), min(vec3<u32>(1u, var_0.b.c.x, 1u), (vec3<u32>(global0.a.c.x, 0u, 53397u) >> (vec3<u32>(1824u, arg_0.c.x, 4294967295u) % vec3<u32>(32u))) | (vec3<u32>(8269u, 1u, global0.a.c.x) | vec3<u32>(2820u, 0u, 0u)))));
    return var_2.b.x;
}

fn func_2() -> vec4<i32> {
    global4 = array<vec4<i32>, 15>();
    var var_0 = 11731u;
    global2 = array<vec2<i32>, 2>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -626f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-483f + 1648f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-395f, 1499f)))) - 333f));
    let var_2 = vec4<bool>((global0.b.b.x >= func_3(Struct_1(global4[_wgslsmith_index_u32(u_input.a.x, 15u)], vec3<i32>(global3.b.x, global0.c.a.x, global0.c.b.x), u_input.a))) | all(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), false))), true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)) || true, true);
    return ~(abs(reverseBits(vec4<i32>(global0.c.b.x, global0.b.b.x, global3.b.x, global3.b.x))) << ((~(~vec4<u32>(global3.c.x, 4294967295u, 4294967295u, global3.c.x)) << (_wgslsmith_sub_vec4_u32(max(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 44115u), vec4<u32>(73312u, global3.c.x, 4294967295u, global3.c.x)), vec4<u32>(u_input.a.x, u_input.a.x, global0.b.c.x, global3.c.x) >> (vec4<u32>(103946u, 1u, global3.c.x, global0.b.c.x) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    global4 = array<vec4<i32>, 15>();
    global3 = arg_0;
    let var_0 = _wgslsmith_add_vec4_i32(-func_2(), ~global4[_wgslsmith_index_u32(~81461u, 15u)]);
    global4 = array<vec4<i32>, 15>();
    let var_1 = 1u;
    return Struct_1(~(~abs(global0.b.a | vec4<i32>(503i, arg_0.a.x, global0.b.a.x, var_0.x))), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(arg_0.a.zxw, vec3<i32>(var_0.x, -31479i, global0.c.a.x)), var_0.zzw), u_input.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    let var_0 = Struct_2(arg_0.b, Struct_1(abs(vec4<i32>(min(2147483647i, arg_2.a.x), -35414i, ~global3.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.a.x, -6105i, -29915i, 0i), vec4<i32>(arg_3, arg_0.a.b.x, arg_0.a.b.x, arg_3)))), _wgslsmith_mult_vec3_i32(global3.b, vec3<i32>(select(-43277i, -2147483647i, true), ~2147483647i, func_2().x)), countOneBits(~(~arg_0.b.c))), global1[_wgslsmith_index_u32(abs(abs(_wgslsmith_mult_u32(u_input.a.x << (u_input.a.x % 32u), u_input.a.x))), 28u)]);
    global0 = Struct_2(global1[_wgslsmith_index_u32(~65639u, 28u)], arg_1.b, func_1(arg_2, vec2<bool>(all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), true)), false)));
    let var_1 = firstTrailingBit(~4684i);
    var var_2 = 14671i;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-234f - -1345f) - _wgslsmith_f_op_f32(step(558f, 144f)))))), -2856f);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(Struct_2(global0.b, Struct_1(global3.a, global0.c.a.xzy, global0.c.c), func_1(Struct_1(global4[_wgslsmith_index_u32(~0u, 15u)], max(global3.b, global0.c.a.xyw), global3.c), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)))), Struct_2(Struct_1(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(global4[_wgslsmith_index_u32(global3.c.x, 15u)], global0.a.a), -vec4<i32>(global0.c.a.x, global3.b.x, -15125i, global3.a.x)), -select(global3.b, vec3<i32>(-2147483647i, -2147483647i, 24202i), false), vec2<u32>(_wgslsmith_mod_u32(global3.c.x, u_input.a.x), 28586u)), Struct_1(vec4<i32>(reverseBits(global3.a.x), global3.a.x, global0.c.b.x, i32(-1i) * -14151i), _wgslsmith_mult_vec3_i32(global0.c.a.xyy, -global0.a.a.wxx), vec2<u32>(~48152u, u_input.a.x)), global1[_wgslsmith_index_u32(~4790u, 28u)]), Struct_1(_wgslsmith_mult_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(global3.a.x, global3.b.x, 1i, -2147483647i), vec4<i32>(2147483647i, 1i, 6006i, -1i)), _wgslsmith_div_vec4_i32(func_2(), vec4<i32>(307i, global3.a.x, global3.b.x, -63912i))), _wgslsmith_div_vec3_i32(global0.a.a.yxz, _wgslsmith_clamp_vec3_i32(vec3<i32>(global3.b.x, global0.b.b.x, global0.b.a.x), global0.b.b, global0.c.a.xyx)) & _wgslsmith_mod_vec3_i32(global3.b, abs(global0.b.b)), _wgslsmith_add_vec2_u32(min(global0.a.c, global3.c), vec2<u32>(u_input.a.x << (22387u % 32u), 11649u & global0.b.c.x))), -select(firstLeadingBit(1i), 18709i, all(vec4<bool>(true, true, true, true))));
    global0 = Struct_2(Struct_1(max(~(-global3.a), ~(vec4<i32>(35928i, global3.b.x, 2147483647i, 41613i) & vec4<i32>(32032i, global3.a.x, global3.a.x, -1i))), ~global3.a.xwx, firstTrailingBit(func_1(global0.b, vec2<bool>(false, false)).c) & _wgslsmith_mult_vec2_u32(max(vec2<u32>(global3.c.x, 4294967295u), vec2<u32>(1u, 4294967295u)), ~vec2<u32>(global0.c.c.x, 22794u))), func_4(func_4(Struct_2(Struct_1(vec4<i32>(global0.a.a.x, -2147483647i, -37765i, global3.a.x), vec3<i32>(-1i, global3.b.x, 21697i), vec2<u32>(16691u, u_input.a.x)), func_1(global0.a, vec2<bool>(false, false)), global1[_wgslsmith_index_u32(4294967295u, 28u)]), Struct_2(global1[_wgslsmith_index_u32(global3.c.x, 28u)], Struct_1(global3.a, vec3<i32>(global3.b.x, global3.b.x, -9843i), global3.c), func_1(global0.c, vec2<bool>(true, false))), global1[_wgslsmith_index_u32(~global3.c.x, 28u)], ~global3.a.x), Struct_2(func_1(Struct_1(global0.b.a, global0.c.a.xwz, vec2<u32>(u_input.a.x, global0.a.c.x)), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), func_4(func_4(Struct_2(global0.b, Struct_1(global4[_wgslsmith_index_u32(u_input.a.x, 15u)], vec3<i32>(global3.b.x, global0.c.a.x, global0.c.a.x), vec2<u32>(u_input.a.x, u_input.a.x)), Struct_1(vec4<i32>(21506i, global3.a.x, 1i, -4437i), vec3<i32>(global0.c.b.x, global0.a.a.x, -60194i), global0.c.c)), Struct_2(global0.a, global1[_wgslsmith_index_u32(4294967295u, 28u)], Struct_1(global0.b.a, global3.a.xxy, vec2<u32>(0u, global0.a.c.x))), Struct_1(global4[_wgslsmith_index_u32(global0.a.c.x, 15u)], vec3<i32>(global0.c.a.x, 0i, global0.c.b.x), global3.c), global3.a.x), Struct_2(Struct_1(vec4<i32>(global0.b.b.x, global0.a.a.x, 16444i, 0i), global3.b, vec2<u32>(27375u, u_input.a.x)), global1[_wgslsmith_index_u32(u_input.a.x, 28u)], global0.b), Struct_1(global0.a.a, global0.c.b, vec2<u32>(11883u, 0u)), global0.a.b.x).a, Struct_1(~global4[_wgslsmith_index_u32(4294967295u, 15u)], vec3<i32>(global0.a.b.x, 10780i, -21035i) ^ vec3<i32>(global3.b.x, global3.b.x, global3.b.x), abs(global0.a.c))), Struct_1(abs(~global4[_wgslsmith_index_u32(64289u, 15u)]), ~global0.c.a.ywy << (~vec3<u32>(u_input.a.x, global0.b.c.x, global0.b.c.x) % vec3<u32>(32u)), ~vec2<u32>(0u, global3.c.x)), -10340i >> (_wgslsmith_add_u32(_wgslsmith_mult_u32(global0.a.c.x, 4294967295u), global0.a.c.x & 23552u) % 32u)).b, func_1(func_1(func_4(Struct_2(global1[_wgslsmith_index_u32(global0.b.c.x, 28u)], global1[_wgslsmith_index_u32(16563u, 28u)], Struct_1(global0.b.a, vec3<i32>(24475i, 1i, 27577i), vec2<u32>(global0.c.c.x, 87216u))), Struct_2(Struct_1(global4[_wgslsmith_index_u32(48239u, 15u)], vec3<i32>(global3.b.x, -1859i, -1i), u_input.a), Struct_1(vec4<i32>(global3.b.x, 9027i, -33782i, global0.a.a.x), vec3<i32>(-1i, -38487i, global0.c.b.x), global0.c.c), global1[_wgslsmith_index_u32(10372u, 28u)]), global1[_wgslsmith_index_u32(global0.a.c.x, 28u)], ~global3.b.x).b, select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec2<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))))));
    let var_0 = Struct_2(func_4(func_4(func_4(func_4(Struct_2(global0.a, global0.b, global1[_wgslsmith_index_u32(59261u, 28u)]), Struct_2(global0.b, global0.c, Struct_1(vec4<i32>(global0.b.a.x, 0i, global0.b.b.x, global0.a.b.x), global0.b.b, vec2<u32>(4294967295u, 46003u))), Struct_1(vec4<i32>(-2147483647i, global0.b.a.x, -7688i, global3.a.x), global0.a.b, vec2<u32>(global3.c.x, 80154u)), -1i), func_4(Struct_2(global1[_wgslsmith_index_u32(4294967295u, 28u)], global0.a, Struct_1(global3.a, global3.b, u_input.a)), Struct_2(global0.b, Struct_1(global3.a, vec3<i32>(global0.c.b.x, global0.a.b.x, -35932i), u_input.a), Struct_1(vec4<i32>(global3.a.x, global0.a.a.x, global3.b.x, -18753i), global0.a.a.yzz, vec2<u32>(4294967295u, global3.c.x))), Struct_1(vec4<i32>(26002i, 2147483647i, 9945i, 1i), vec3<i32>(global0.c.a.x, global0.c.b.x, -1i), global3.c), 5076i), Struct_1(vec4<i32>(global3.b.x, global0.b.a.x, global0.c.b.x, global0.a.a.x), vec3<i32>(global3.a.x, global3.a.x, global0.c.b.x), global0.a.c), ~global3.b.x), func_4(func_4(Struct_2(Struct_1(vec4<i32>(1843i, global0.a.b.x, global0.c.a.x, global3.a.x), vec3<i32>(-2147483647i, global3.b.x, global0.a.a.x), vec2<u32>(25487u, u_input.a.x)), global1[_wgslsmith_index_u32(global0.b.c.x, 28u)], global1[_wgslsmith_index_u32(21591u, 28u)]), Struct_2(global1[_wgslsmith_index_u32(85728u, 28u)], global1[_wgslsmith_index_u32(global0.b.c.x, 28u)], Struct_1(vec4<i32>(global0.c.a.x, global0.b.b.x, global3.b.x, -11894i), vec3<i32>(-29760i, 1i, global3.b.x), u_input.a)), global0.c, 2147483647i), Struct_2(Struct_1(global3.a, global3.b, u_input.a), global0.b, Struct_1(global3.a, vec3<i32>(67921i, -2147483647i, 101017i), vec2<u32>(u_input.a.x, 0u))), global0.a, -2147483647i), global1[_wgslsmith_index_u32(firstTrailingBit(~0u), 28u)], global3.b.x), func_4(Struct_2(global1[_wgslsmith_index_u32(~u_input.a.x, 28u)], func_1(Struct_1(vec4<i32>(global3.b.x, 41828i, 2147483647i, global3.b.x), vec3<i32>(2147483647i, 2147483647i, 62464i), vec2<u32>(global3.c.x, global0.b.c.x)), vec2<bool>(false, true)), func_4(Struct_2(global0.c, global1[_wgslsmith_index_u32(9505u, 28u)], global0.b), Struct_2(global0.b, Struct_1(global4[_wgslsmith_index_u32(0u, 15u)], vec3<i32>(-1i, -45175i, -2147483647i), vec2<u32>(global0.b.c.x, global0.a.c.x)), global1[_wgslsmith_index_u32(1u, 28u)]), global1[_wgslsmith_index_u32(global3.c.x, 28u)], global0.a.a.x).c), Struct_2(Struct_1(vec4<i32>(global3.a.x, -48413i, global3.b.x, global3.a.x), vec3<i32>(global3.a.x, global3.b.x, -12680i), global0.a.c), func_4(Struct_2(global0.c, global0.c, global0.a), Struct_2(global0.b, global1[_wgslsmith_index_u32(u_input.a.x, 28u)], Struct_1(global0.c.a, vec3<i32>(global0.b.a.x, global3.b.x, -2147483647i), global0.a.c)), global1[_wgslsmith_index_u32(global3.c.x, 28u)], global0.b.a.x).b, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(33181u, u_input.a.x, global3.c.x), vec3<u32>(u_input.a.x, global0.b.c.x, 0u)), 28u)]), Struct_1(vec4<i32>(-2147483647i, global3.b.x, 0i, -2147483647i) & global3.a, global3.b, reverseBits(global3.c)), global0.c.a.x), func_4(Struct_2(func_4(Struct_2(global0.c, Struct_1(global0.a.a, vec3<i32>(-61795i, global3.b.x, global0.c.b.x), vec2<u32>(4294967295u, 43699u)), Struct_1(global0.c.a, vec3<i32>(global0.a.b.x, global3.b.x, 35836i), vec2<u32>(0u, u_input.a.x))), Struct_2(global0.b, global0.c, Struct_1(vec4<i32>(0i, 10767i, global0.b.a.x, -2147483647i), global3.b, vec2<u32>(u_input.a.x, 1u))), Struct_1(vec4<i32>(1i, 8944i, 8088i, global3.a.x), global0.c.a.wwz, global0.c.c), 411i).b, Struct_1(global3.a, global0.a.a.zyx, vec2<u32>(global0.b.c.x, 1u)), func_4(Struct_2(Struct_1(global0.b.a, global0.a.b, vec2<u32>(0u, global3.c.x)), global0.a, Struct_1(global3.a, global3.b, vec2<u32>(global3.c.x, global0.c.c.x))), Struct_2(global1[_wgslsmith_index_u32(117114u, 28u)], global1[_wgslsmith_index_u32(79189u, 28u)], global1[_wgslsmith_index_u32(global0.b.c.x, 28u)]), global0.a, global3.b.x).b), Struct_2(func_4(Struct_2(Struct_1(vec4<i32>(-1i, -2147483647i, global3.a.x, 1i), global3.a.zyx, global3.c), Struct_1(vec4<i32>(global3.a.x, -17226i, -20424i, global0.a.a.x), global3.a.xxy, u_input.a), Struct_1(vec4<i32>(-30031i, global3.a.x, 2147483647i, 36354i), global0.b.b, global3.c)), Struct_2(global0.a, Struct_1(vec4<i32>(-25094i, global3.b.x, global0.c.b.x, 10167i), vec3<i32>(1677i, global3.b.x, global3.b.x), vec2<u32>(1u, u_input.a.x)), global0.b), global1[_wgslsmith_index_u32(u_input.a.x, 28u)], -15842i).b, Struct_1(global4[_wgslsmith_index_u32(0u, 15u)], global3.a.zyz, u_input.a), global0.a), Struct_1(global4[_wgslsmith_index_u32(~7485u, 15u)], vec3<i32>(global3.b.x, global0.b.b.x, global3.a.x), vec2<u32>(1u, 318u)), ~_wgslsmith_dot_vec2_i32(global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(1u, 2u)])).b, global3.b.x).b, func_4(func_4(Struct_2(func_4(Struct_2(global0.c, Struct_1(vec4<i32>(global3.b.x, global0.a.b.x, 2147483647i, -9785i), vec3<i32>(global0.a.b.x, 2147483647i, 2147483647i), vec2<u32>(1u, 4294967295u)), global1[_wgslsmith_index_u32(global3.c.x, 28u)]), Struct_2(Struct_1(global4[_wgslsmith_index_u32(50585u, 15u)], global0.b.a.xwx, global0.b.c), global1[_wgslsmith_index_u32(0u, 28u)], global0.a), global1[_wgslsmith_index_u32(u_input.a.x, 28u)], global0.b.b.x).b, global0.b, func_4(Struct_2(global1[_wgslsmith_index_u32(16054u, 28u)], global1[_wgslsmith_index_u32(1u, 28u)], Struct_1(global4[_wgslsmith_index_u32(u_input.a.x, 15u)], global3.a.xzw, vec2<u32>(global3.c.x, u_input.a.x))), Struct_2(Struct_1(global4[_wgslsmith_index_u32(0u, 15u)], global3.b, vec2<u32>(4294967295u, 0u)), global0.b, global1[_wgslsmith_index_u32(global3.c.x, 28u)]), global0.b, global3.b.x).a), func_4(func_4(Struct_2(global0.b, Struct_1(global0.c.a, vec3<i32>(global0.c.b.x, 22922i, -2147483647i), vec2<u32>(1u, 1u)), global1[_wgslsmith_index_u32(global0.b.c.x, 28u)]), Struct_2(global1[_wgslsmith_index_u32(global3.c.x, 28u)], global1[_wgslsmith_index_u32(u_input.a.x, 28u)], global0.a), global0.a, global3.b.x), Struct_2(global0.a, Struct_1(vec4<i32>(2147483647i, global3.b.x, global0.c.a.x, global0.a.a.x), global0.a.b, global3.c), Struct_1(global4[_wgslsmith_index_u32(4294967295u, 15u)], global3.a.wyz, vec2<u32>(u_input.a.x, 0u))), Struct_1(global3.a, vec3<i32>(global0.b.a.x, -2686i, global3.a.x), u_input.a), ~global0.c.a.x), global0.c, 1i), Struct_2(func_1(global0.a, vec2<bool>(true, true)), global1[_wgslsmith_index_u32(~1u, 28u)], func_1(global0.c, vec2<bool>(false, false))), global1[_wgslsmith_index_u32(abs(max(abs(4985u), global0.b.c.x)), 28u)], global0.c.a.x).a, func_4(func_4(Struct_2(Struct_1(vec4<i32>(-56678i, 0i, 39464i, global3.b.x), global3.a.wwz, global0.c.c), Struct_1(vec4<i32>(global0.a.a.x, global0.b.a.x, 1i, 2147483647i), global3.a.xwz, vec2<u32>(global0.c.c.x, global0.c.c.x)), global1[_wgslsmith_index_u32(global0.a.c.x, 28u)]), Struct_2(func_1(Struct_1(vec4<i32>(global0.c.a.x, global3.b.x, global0.a.b.x, global3.a.x), global3.a.yyx, vec2<u32>(4294967295u, 1u)), vec2<bool>(true, true)), global0.c, global0.c), Struct_1(vec4<i32>(20100i, global3.a.x, global0.a.b.x, -21144i), reverseBits(vec3<i32>(1i, 2147483647i, global0.c.a.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(global0.c.c.x, 1u), global0.c.c)), 55321i), Struct_2(func_4(func_4(Struct_2(global0.c, Struct_1(vec4<i32>(-11352i, 0i, global3.a.x, global3.b.x), vec3<i32>(2147483647i, global0.c.b.x, global0.c.a.x), global3.c), global1[_wgslsmith_index_u32(0u, 28u)]), Struct_2(Struct_1(global3.a, vec3<i32>(1i, global0.a.a.x, global0.c.a.x), global3.c), Struct_1(global0.c.a, global0.b.b, u_input.a), global1[_wgslsmith_index_u32(1u, 28u)]), global1[_wgslsmith_index_u32(u_input.a.x, 28u)], global0.b.b.x), func_4(Struct_2(global1[_wgslsmith_index_u32(11830u, 28u)], Struct_1(global4[_wgslsmith_index_u32(1955u, 15u)], vec3<i32>(global3.a.x, global0.b.b.x, 41341i), u_input.a), global1[_wgslsmith_index_u32(global3.c.x, 28u)]), Struct_2(global0.b, Struct_1(global4[_wgslsmith_index_u32(35010u, 15u)], vec3<i32>(1i, global3.a.x, global0.a.b.x), vec2<u32>(1u, u_input.a.x)), Struct_1(vec4<i32>(-43658i, global0.a.b.x, -2147483647i, -27907i), global3.b, vec2<u32>(10063u, global3.c.x))), Struct_1(vec4<i32>(global0.b.b.x, global3.b.x, global3.a.x, -30063i), vec3<i32>(0i, global3.a.x, 2147483647i), vec2<u32>(global0.c.c.x, 0u)), -1i), Struct_1(global0.a.a, global0.a.a.xxy, global3.c), 1i).c, Struct_1(-vec4<i32>(0i, global0.b.b.x, -2147483647i, global0.a.a.x), vec3<i32>(global3.b.x, global0.c.a.x, -61953i), vec2<u32>(0u, u_input.a.x) | vec2<u32>(u_input.a.x, 30431u)), func_1(global1[_wgslsmith_index_u32(54229u, 28u)], vec2<bool>(false, true))), func_4(func_4(func_4(Struct_2(Struct_1(global4[_wgslsmith_index_u32(1u, 15u)], global0.c.b, vec2<u32>(38596u, global0.c.c.x)), Struct_1(vec4<i32>(37279i, -17894i, global3.a.x, global0.c.a.x), global0.a.b, u_input.a), Struct_1(global4[_wgslsmith_index_u32(92163u, 15u)], vec3<i32>(-2147483647i, global3.b.x, -16371i), vec2<u32>(4294967295u, u_input.a.x))), Struct_2(global1[_wgslsmith_index_u32(54131u, 28u)], global1[_wgslsmith_index_u32(44971u, 28u)], Struct_1(vec4<i32>(global0.a.b.x, global0.a.a.x, global0.a.b.x, global0.b.b.x), vec3<i32>(global3.a.x, global3.b.x, 2147483647i), vec2<u32>(global0.a.c.x, u_input.a.x))), global1[_wgslsmith_index_u32(5056u, 28u)], global3.b.x), Struct_2(Struct_1(global3.a, global3.a.zyy, vec2<u32>(4294967295u, u_input.a.x)), global1[_wgslsmith_index_u32(global3.c.x, 28u)], Struct_1(global0.a.a, global0.a.b, u_input.a)), func_4(Struct_2(global0.c, Struct_1(vec4<i32>(6468i, global3.a.x, global3.a.x, global0.c.a.x), vec3<i32>(1i, -74012i, 1i), vec2<u32>(global3.c.x, 17784u)), global1[_wgslsmith_index_u32(0u, 28u)]), Struct_2(Struct_1(global0.a.a, vec3<i32>(global0.a.b.x, global3.b.x, 0i), vec2<u32>(14388u, 536u)), Struct_1(vec4<i32>(global0.b.b.x, -3315i, global3.a.x, 0i), vec3<i32>(global3.a.x, global0.c.b.x, global0.b.b.x), vec2<u32>(4294967295u, u_input.a.x)), Struct_1(global4[_wgslsmith_index_u32(u_input.a.x, 15u)], global3.a.wyw, global0.a.c)), Struct_1(global3.a, global0.a.a.zzx, vec2<u32>(u_input.a.x, u_input.a.x)), 29474i).c, 1i), func_4(Struct_2(global1[_wgslsmith_index_u32(1u, 28u)], Struct_1(global4[_wgslsmith_index_u32(4294967295u, 15u)], vec3<i32>(global0.c.a.x, global3.a.x, global0.a.a.x), global0.b.c), Struct_1(global4[_wgslsmith_index_u32(0u, 15u)], vec3<i32>(global3.a.x, -37255i, global3.a.x), vec2<u32>(u_input.a.x, global3.c.x))), Struct_2(Struct_1(vec4<i32>(0i, global3.b.x, global0.c.a.x, global3.a.x), vec3<i32>(global0.b.a.x, -56002i, global0.a.b.x), global0.a.c), Struct_1(vec4<i32>(global0.a.a.x, global3.b.x, 0i, global0.b.a.x), vec3<i32>(global0.b.b.x, -53524i, global3.a.x), vec2<u32>(u_input.a.x, 77044u)), global1[_wgslsmith_index_u32(global3.c.x, 28u)]), global1[_wgslsmith_index_u32(0u & global3.c.x, 28u)], max(global0.a.b.x, global0.c.a.x)), Struct_1(vec4<i32>(global3.a.x, -1i, 2147483647i, 6233i), vec3<i32>(global0.a.a.x, 21261i, 67024i), vec2<u32>(74468u, u_input.a.x)), ~global3.b.x).c, _wgslsmith_dot_vec4_i32(global3.a, ~global3.a) ^ (global3.a.x ^ -global3.b.x)).a);
    let var_1 = _wgslsmith_mod_i32(~global3.b.x, -1i);
    global0 = Struct_2(var_0.a, global0.b, func_4(var_0, func_4(var_0, Struct_2(global0.b, Struct_1(global4[_wgslsmith_index_u32(0u, 15u)], vec3<i32>(1i, 13671i, 6221i), vec2<u32>(32692u, 30163u)), var_0.a), func_1(global0.c, vec2<bool>(true, true)), ~abs(24538i)), var_0.c, global0.b.a.x).b);
    global2 = array<vec2<i32>, 2>();
    var var_2 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(~global0.a.c.x, 0u, abs(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(global3.c.x, global3.c.x, 4294967295u, 1u), vec4<u32>(4988u, 26414u, global0.b.c.x, 68969u))), ~select(vec4<u32>(24575u, global0.b.c.x, 4294967295u, 63641u), vec4<u32>(global3.c.x, var_0.c.c.x, global3.c.x, 84177u), false)), vec4<u32>(~u_input.a.x, 41588u, firstTrailingBit(var_0.b.c.x) & var_0.a.c.x, global3.c.x)), 9755u);
    var var_3 = 1u;
    global2 = array<vec2<i32>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.a.c.x, 0u, 55756u, u_input.a.x), abs(vec4<u32>(64830u, 93140u, global0.a.c.x, var_0.a.c.x))), global0.a.c.x & var_0.c.c.x, 1u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(230f * _wgslsmith_f_op_f32(floor(1f))), -988f));
}

