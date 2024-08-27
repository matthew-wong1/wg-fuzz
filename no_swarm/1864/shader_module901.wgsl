struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: Struct_1;

var<private> global2: bool;

var<private> global3: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec3<bool>(true, true, false), vec4<u32>(60435u, 21171u, 47603u, 1u), vec2<bool>(false, false), vec2<i32>(14401i, 1i)), Struct_1(vec3<bool>(true, false, true), vec4<u32>(1u, 10295u, 7614u, 40055u), vec2<bool>(true, false), vec2<i32>(i32(-2147483648), -23676i)), Struct_1(vec3<bool>(true, true, false), vec4<u32>(3149u, 9452u, 1u, 38277u), vec2<bool>(true, true), vec2<i32>(-8887i, 37890i)), Struct_1(vec3<bool>(true, true, false), vec4<u32>(1u, 0u, 74132u, 1u), vec2<bool>(false, false), vec2<i32>(2147483647i, 7047i)), Struct_1(vec3<bool>(false, false, false), vec4<u32>(55695u, 1u, 5361u, 57843u), vec2<bool>(true, true), vec2<i32>(-11882i, 2147483647i)), Struct_1(vec3<bool>(false, false, false), vec4<u32>(60366u, 68656u, 1u, 0u), vec2<bool>(true, false), vec2<i32>(1i, 6078i)), Struct_1(vec3<bool>(false, false, true), vec4<u32>(4294967295u, 1u, 47480u, 56234u), vec2<bool>(false, false), vec2<i32>(24873i, -55118i)), Struct_1(vec3<bool>(true, true, true), vec4<u32>(30738u, 16595u, 81508u, 4294967295u), vec2<bool>(false, true), vec2<i32>(-39676i, i32(-2147483648))), Struct_1(vec3<bool>(true, false, true), vec4<u32>(41712u, 1u, 0u, 39352u), vec2<bool>(true, true), vec2<i32>(29613i, 1i)), Struct_1(vec3<bool>(false, true, true), vec4<u32>(8361u, 0u, 32599u, 8258u), vec2<bool>(true, true), vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(vec3<bool>(true, true, false), vec4<u32>(0u, 39300u, 56877u, 0u), vec2<bool>(true, false), vec2<i32>(2147483647i, 1i)), Struct_1(vec3<bool>(true, false, true), vec4<u32>(0u, 43290u, 1u, 34273u), vec2<bool>(true, false), vec2<i32>(32400i, 21737i)), Struct_1(vec3<bool>(false, true, false), vec4<u32>(17726u, 49269u, 29131u, 0u), vec2<bool>(true, false), vec2<i32>(0i, 8717i)), Struct_1(vec3<bool>(false, false, false), vec4<u32>(37215u, 18990u, 0u, 4294967295u), vec2<bool>(true, true), vec2<i32>(1i, 2147483647i)), Struct_1(vec3<bool>(true, false, false), vec4<u32>(1u, 4294967295u, 4294967295u, 0u), vec2<bool>(false, true), vec2<i32>(-1i, 0i)), Struct_1(vec3<bool>(false, true, false), vec4<u32>(28682u, 4294967295u, 4294967295u, 4294967295u), vec2<bool>(false, false), vec2<i32>(-6354i, -4290i)), Struct_1(vec3<bool>(true, false, true), vec4<u32>(4294967295u, 105903u, 0u, 4294967295u), vec2<bool>(true, false), vec2<i32>(24320i, 2147483647i)), Struct_1(vec3<bool>(true, false, true), vec4<u32>(0u, 4294967295u, 1u, 13255u), vec2<bool>(false, false), vec2<i32>(-32134i, 3406i)), Struct_1(vec3<bool>(true, true, true), vec4<u32>(1u, 6982u, 30278u, 39512u), vec2<bool>(true, false), vec2<i32>(-68421i, -1i)));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(180f)) * _wgslsmith_div_f32(-362f, 1067f)), -316f, (!arg_0.a.x & !arg_0.a.x) == ((global1.d.x ^ arg_0.d.x) != ~(-15947i)))));
    let var_1 = firstTrailingBit(arg_0.b);
    global2 = true;
    var var_2 = _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(arg_0.d, global1.d), ~vec2<i32>(_wgslsmith_mult_i32(1i, arg_0.d.x), -40518i)) >> ((abs(~(var_1.xx << (var_1.xx % vec2<u32>(32u)))) >> (u_input.a.yy % vec2<u32>(32u))) % vec2<u32>(32u));
    global3 = array<Struct_1, 19>();
    return vec3<u32>(var_1.x, select(_wgslsmith_div_u32(global1.b.x, 37493u), global1.b.x, any(!vec2<bool>(global1.a.x, true))), 38616u);
}

fn func_2() -> Struct_1 {
    let var_0 = !global1.a;
    let var_1 = ~u_input.a;
    let var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(0u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(global1.b.zzz, vec3<u32>(1u, 61363u, 4294967295u)), func_3(global3[_wgslsmith_index_u32(u_input.a.x, 19u)])) ^ ~(~0u), var_1.x, firstLeadingBit(~_wgslsmith_clamp_u32(var_1.x, var_1.x, 4294967295u))), _wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, 1u), global1.b, vec4<bool>(var_0.x, var_0.x, var_0.x, global1.c.x)), ~global1.b), vec4<u32>(28798u, _wgslsmith_clamp_u32(~0u, 26667u, _wgslsmith_sub_u32(28949u, global1.b.x)), 4294967295u, global1.b.x ^ ~u_input.a.x)));
    global3 = array<Struct_1, 19>();
    return Struct_1(select(select(select(vec3<bool>(var_0.x, true, true), global1.a, true), vec3<bool>(true, true, global1.d.x > -6278i), global1.a.x), vec3<bool>(select(true, true, true), any(select(vec3<bool>(global1.c.x, false, var_0.x), var_0, global1.a)), true), select(vec3<bool>(true, true, any(vec2<bool>(true, global1.c.x))), vec3<bool>(true, all(global1.a), false & global1.a.x), var_0)), firstLeadingBit(u_input.a), vec2<bool>(false, false), global1.d);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = 1i;
    global1 = func_2();
    global3 = array<Struct_1, 19>();
    var var_0 = Struct_1(!select(arg_0.a, !vec3<bool>(true, false, global1.a.x), true), _wgslsmith_mult_vec4_u32(u_input.a, global1.b), !vec2<bool>(!global1.a.x, global1.a.x), global1.d);
    let var_1 = all(vec3<bool>((global1.d.x & -1i) < firstLeadingBit(select(global1.d.x, global1.d.x, true)), false, true));
    return Struct_1(!var_0.a, vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_0.b.x, 2671u, ~var_0.b.x), ~(~6313u)), 31157u, global1.b.x & 1u, countOneBits(~1u) >> (min(countOneBits(var_0.b.x), 8226u << (var_0.b.x % 32u)) % 32u)), global1.a.zy, _wgslsmith_mult_vec2_i32(-global1.d, (firstLeadingBit(vec2<i32>(arg_0.d.x, 1i)) & var_0.d) ^ vec2<i32>(global1.d.x, 0i)));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1892f, -1497f, -782f, 1000f) - vec4<f32>(1166f, 2215f, -347f, 298f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -834f, -639f, 1274f))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(394f, 227f, -366f, -1264f))))))));
    return _wgslsmith_f_op_f32(-965f + _wgslsmith_f_op_f32(step(262f, _wgslsmith_f_op_f32(floor(-219f)))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(4294967295u, 19u)];
    global2 = global1.a.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x))), _wgslsmith_f_op_f32(-1f)))));
    var_1 = _wgslsmith_f_op_f32(func_5(global1.c, func_4(func_2()), global1.c.x, func_4(func_4(Struct_1(var_0.a, _wgslsmith_mod_vec4_u32(vec4<u32>(5940u, 0u, global1.b.x, 38468u), vec4<u32>(var_0.b.x, u_input.b, 16051u, var_0.b.x)), vec2<bool>(global1.a.x, false), arg_2)))));
    var var_2 = ~(~func_2().b.x);
    return Struct_1(func_4(Struct_1(var_0.a, _wgslsmith_mod_vec4_u32(var_0.b, var_0.b), var_0.c, vec2<i32>(var_0.d.x, _wgslsmith_mod_i32(global1.d.x, var_0.d.x)))).a, ~_wgslsmith_sub_vec4_u32(u_input.a, global1.b), !var_0.a.xz, _wgslsmith_div_vec2_i32(-arg_2, var_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.a.ww, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1347f, 2275f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(215f, 945f)))))), ~vec2<i32>(global1.d.x, ~(-40854i)));
    var var_1 = ~(~var_0.b.xz);
    global0 = ~firstTrailingBit(var_0.d.x);
    var_1 = ~global1.b.xy;
    var var_2 = func_1(var_0.b.xz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1278f, -2348f)))), func_4(func_2()).d).d.x;
    global1 = func_4(Struct_1(!vec3<bool>(global1.a.x && false, true, var_0.a.x), vec4<u32>(4294967295u, func_1(abs(global1.b.ww), _wgslsmith_div_vec2_f32(vec2<f32>(150f, -390f), vec2<f32>(-588f, -1345f)), global1.d & var_0.d).b.x, ~0u & var_1.x, _wgslsmith_div_u32(global1.b.x, _wgslsmith_mod_u32(88602u, 4294967295u))), !(!(!vec2<bool>(var_0.c.x, true))), var_0.d));
    let var_3 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(firstLeadingBit(abs(-vec3<i32>(global1.d.x, var_0.d.x, var_0.d.x))), ~vec3<i32>(-1i, -47631i, var_0.d.x)), ~(~reverseBits(vec3<u32>(var_1.x, 0u, u_input.b))));
}

