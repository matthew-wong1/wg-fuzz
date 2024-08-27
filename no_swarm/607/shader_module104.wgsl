struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
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

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(Struct_1(true, vec3<i32>(28458i, -23101i, -2185i), vec2<i32>(-51204i, i32(-2147483648)), vec3<i32>(2147483647i, -35510i, 29318i), 33600u), Struct_1(false, vec3<i32>(26587i, 0i, -39698i), vec2<i32>(33057i, 62769i), vec3<i32>(2147483647i, -1i, -1i), 64994u)), Struct_2(Struct_1(true, vec3<i32>(i32(-2147483648), -6217i, 2147483647i), vec2<i32>(0i, 3463i), vec3<i32>(7696i, -1i, 1i), 0u), Struct_1(true, vec3<i32>(-1i, 77074i, 0i), vec2<i32>(72084i, 48188i), vec3<i32>(-83577i, i32(-2147483648), -16656i), 69188u)), Struct_2(Struct_1(false, vec3<i32>(54449i, 5037i, -9913i), vec2<i32>(-42093i, 2147483647i), vec3<i32>(i32(-2147483648), 27047i, 1i), 71135u), Struct_1(true, vec3<i32>(38752i, i32(-2147483648), -5913i), vec2<i32>(34053i, 28721i), vec3<i32>(i32(-2147483648), i32(-2147483648), -20859i), 0u)), Struct_2(Struct_1(false, vec3<i32>(2147483647i, 29217i, i32(-2147483648)), vec2<i32>(0i, 0i), vec3<i32>(0i, i32(-2147483648), 2901i), 7840u), Struct_1(true, vec3<i32>(36621i, 0i, 19316i), vec2<i32>(-1i, 171i), vec3<i32>(-7714i, 0i, -26138i), 7794u)), Struct_2(Struct_1(false, vec3<i32>(2147483647i, 44219i, 0i), vec2<i32>(-1i, -96726i), vec3<i32>(35340i, 0i, i32(-2147483648)), 62006u), Struct_1(true, vec3<i32>(-41119i, -50785i, 51687i), vec2<i32>(12468i, 0i), vec3<i32>(21781i, 1i, 1i), 0u)), Struct_2(Struct_1(true, vec3<i32>(2147483647i, 2147483647i, 4295i), vec2<i32>(-12575i, i32(-2147483648)), vec3<i32>(-48886i, 21408i, -1i), 21386u), Struct_1(true, vec3<i32>(2147483647i, -32368i, 23979i), vec2<i32>(100542i, -1i), vec3<i32>(0i, -34026i, 1i), 41983u)), Struct_2(Struct_1(true, vec3<i32>(-1i, 12521i, 2147483647i), vec2<i32>(-1i, -35014i), vec3<i32>(59018i, 66737i, 73780i), 0u), Struct_1(true, vec3<i32>(12459i, 31155i, 1i), vec2<i32>(0i, 48246i), vec3<i32>(68509i, 2147483647i, -1i), 29398u)), Struct_2(Struct_1(false, vec3<i32>(0i, -30771i, 2147483647i), vec2<i32>(8796i, -20442i), vec3<i32>(38598i, -1i, -31501i), 4294967295u), Struct_1(false, vec3<i32>(2147483647i, 22603i, i32(-2147483648)), vec2<i32>(1i, i32(-2147483648)), vec3<i32>(-1i, 36079i, 38262i), 1u)), Struct_2(Struct_1(true, vec3<i32>(31711i, -26053i, 29591i), vec2<i32>(i32(-2147483648), 1i), vec3<i32>(0i, -717i, 1i), 4294967295u), Struct_1(true, vec3<i32>(2147483647i, -58522i, 46264i), vec2<i32>(55406i, 21338i), vec3<i32>(68664i, -1i, -16401i), 23136u)), Struct_2(Struct_1(false, vec3<i32>(2147483647i, 22389i, 1i), vec2<i32>(-25805i, 38154i), vec3<i32>(i32(-2147483648), 22813i, 39083i), 2014u), Struct_1(true, vec3<i32>(1i, 2147483647i, -15449i), vec2<i32>(1i, 1i), vec3<i32>(-1i, 2147483647i, 0i), 53105u)));

var<private> global2: vec3<i32> = vec3<i32>(-8571i, 1i, -1i);

var<private> global3: array<Struct_2, 7>;

var<private> global4: f32;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> f32 {
    let var_0 = arg_0.e;
    var var_1 = !global0.x;
    global4 = 1f;
    let var_2 = arg_0;
    global0 = !(!select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), !vec2<bool>(false, arg_0.a), false), !(!vec2<bool>(false, global0.x)), all(select(vec2<bool>(var_2.a, false), vec2<bool>(false, var_2.a), vec2<bool>(arg_0.a, var_2.a)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1505f + _wgslsmith_f_op_f32(f32(-1f) * -2054f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1445f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(597f, -1515f) * 875f))));
}

fn func_2() -> vec2<bool> {
    let var_0 = ~abs(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a.x, 34152u, 3173u) | vec3<u32>(48697u, 0u, 4294967295u), vec3<u32>(u_input.a.x, ~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 18883u, 0u), vec4<u32>(0u, 0u, 13498u, u_input.a.x)))));
    global3 = array<Struct_2, 7>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(global0.x, vec3<i32>(u_input.b.x, global2.x, 2147483647i), vec2<i32>(-57025i, u_input.b.x), vec3<i32>(37304i, 21614i, u_input.b.x), u_input.a.x), u_input.a.x)), 1865f)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f)))), Struct_1(!global0.x, _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, 4623i, global2.x), vec3<i32>(u_input.b.x, global2.x, 1i)), vec3<i32>(u_input.b.x, -10558i, 22740i)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, var_0.x, 72263u), var_0) % vec3<u32>(32u)), countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, 65450i)) ^ vec2<i32>(1i, u_input.b.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(-23905i, -22303i, global2.x), vec3<i32>(u_input.b.x, -2683i, u_input.b.x)), 0u));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(0u & _wgslsmith_clamp_u32(23478u, u_input.a.x, var_1.b.e)) << (4294967295u % 32u), ~_wgslsmith_div_u32(~(~var_0.x), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(1u, u_input.a.x, var_1.b.e, u_input.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(37542u, var_0.x, var_1.b.e, var_0.x), vec4<u32>(var_0.x, u_input.a.x, 1u, var_1.b.e))))), 10u)];
    let var_3 = var_1.b;
    return !(!(!select(select(vec2<bool>(false, var_3.a), vec2<bool>(true, false), vec2<bool>(true, false)), !vec2<bool>(false, global0.x), !vec2<bool>(true, var_3.a))));
}

fn func_4(arg_0: vec2<bool>) -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1943f, 1000f), vec2<f32>(-560f, 1072f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-395f, -339f), vec2<f32>(-345f, -1069f)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, -819f), vec2<f32>(418f, 1626f)))))), Struct_1(true, vec3<i32>(max(~1i, 780i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(7489i, global2.x, -32730i, u_input.b.x), vec4<i32>(-4775i, -4347i, global2.x, u_input.b.x)), 1i, 0i), -1i), _wgslsmith_sub_vec2_i32((u_input.b << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))) | u_input.b, vec2<i32>(~u_input.b.x, u_input.b.x)), ~(_wgslsmith_clamp_vec3_i32(vec3<i32>(-6221i, 0i, u_input.b.x), vec3<i32>(global2.x, u_input.b.x, u_input.b.x), vec3<i32>(-1i, -2147483647i, -31592i)) << (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 112903u, 12086u), u_input.a) % vec3<u32>(32u))), _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_div_u32(~u_input.a.x, select(u_input.a.x, 0u, global0.x)))));
    let var_1 = Struct_2(Struct_1(true, select(abs(var_0.b.b), (vec3<i32>(global2.x, global2.x, var_0.b.d.x) << (u_input.a % vec3<u32>(32u))) | _wgslsmith_div_vec3_i32(vec3<i32>(-37109i, global2.x, u_input.b.x), var_0.b.d), vec3<bool>(arg_0.x, true, true)), abs(_wgslsmith_sub_vec2_i32(-u_input.b, ~vec2<i32>(var_0.b.c.x, u_input.b.x))), _wgslsmith_sub_vec3_i32(firstLeadingBit(~var_0.b.b), -_wgslsmith_sub_vec3_i32(var_0.b.d, var_0.b.b)), min(var_0.b.e | ~0u, _wgslsmith_sub_u32(4294967295u, ~u_input.a.x))), var_0.b);
    let var_2 = -(~max(~(-2147483647i), -2147483647i));
    let var_3 = Struct_2(var_1.b, var_1.b);
    var_0 = Struct_3(var_0.a, Struct_1(all(!(!vec4<bool>(true, global0.x, false, var_0.b.a))), vec3<i32>(~u_input.b.x >> (4294967295u % 32u), _wgslsmith_mod_i32(min(var_0.b.b.x, var_1.a.c.x), var_3.b.d.x << (var_0.b.e % 32u)), min(~0i, abs(u_input.b.x))), -vec2<i32>(4734i, global2.x) | vec2<i32>(var_0.b.d.x, var_1.a.c.x ^ 1i), max(vec3<i32>(-1i) * -var_0.b.b, vec3<i32>(_wgslsmith_add_i32(-1i, var_0.b.b.x), reverseBits(var_1.b.d.x), 1i)), _wgslsmith_mod_u32(abs(var_1.a.e), ~var_3.b.e)));
    return var_0.b.e;
}

fn func_1() -> u32 {
    return func_4(!(!func_2()));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~max(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.xy), u_input.a.zx), ~func_1() ^ (62347u & func_4(vec2<bool>(true, false))));
    let var_1 = firstLeadingBit(4294967295u);
    global3 = array<Struct_2, 7>();
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2085f), _wgslsmith_f_op_f32(floor(1000f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -655f))), all(vec4<bool>(global0.x, global0.x, global0.x, global0.x)) & global0.x)), Struct_1(any(select(!vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, false, global0.x), any(vec3<bool>(true, global0.x, global0.x)))), select(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, 2147483647i, 11102i), vec3<i32>(2147483647i, 0i, -2147483647i)), vec3<i32>(global2.x, global2.x, global2.x)), reverseBits(vec3<i32>(u_input.b.x, u_input.b.x, 26833i)), true), u_input.b, vec3<i32>(8066i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-9754i, u_input.b.x, 39066i, global2.x), vec4<i32>(global2.x, u_input.b.x, -5091i, 0i)), _wgslsmith_div_i32(-1i, ~global2.x), -37283i), var_1));
    global4 = _wgslsmith_f_op_f32(668f * -498f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(func_3(Struct_1(true, var_2.b.d, global2.yz, vec3<i32>(u_input.b.x, 0i, global2.x), 40718u), ~var_1)))));
}

