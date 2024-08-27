struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec2<u32>(1u, 0u), Struct_1(true, -10943i, vec4<u32>(83596u, 4294967295u, 87559u, 1u), vec3<i32>(-4844i, 4125i, -1i)), Struct_1(false, -16261i, vec4<u32>(4294967295u, 48379u, 1u, 52494u), vec3<i32>(56530i, 1i, -1i)), true, vec2<u32>(8928u, 0u)), Struct_2(vec2<u32>(1u, 20555u), Struct_1(true, -62551i, vec4<u32>(50555u, 4294967295u, 1u, 34476u), vec3<i32>(23203i, -3762i, 1i)), Struct_1(true, 10559i, vec4<u32>(10791u, 34096u, 11215u, 51856u), vec3<i32>(1i, 1i, 35451i)), false, vec2<u32>(21962u, 66136u)), Struct_2(vec2<u32>(78971u, 4294967295u), Struct_1(false, -27130i, vec4<u32>(46874u, 0u, 26111u, 0u), vec3<i32>(2147483647i, -24830i, 2147483647i)), Struct_1(true, 23697i, vec4<u32>(4294967295u, 72817u, 1u, 0u), vec3<i32>(-28145i, 2147483647i, i32(-2147483648))), false, vec2<u32>(5734u, 1u)), Struct_2(vec2<u32>(1u, 4294967295u), Struct_1(true, 0i, vec4<u32>(4294967295u, 0u, 0u, 0u), vec3<i32>(1i, -14354i, 0i)), Struct_1(false, i32(-2147483648), vec4<u32>(4294967295u, 21679u, 4294967295u, 0u), vec3<i32>(-1i, 35204i, 0i)), false, vec2<u32>(41113u, 4294967295u)));

var<private> global1: Struct_2 = Struct_2(vec2<u32>(0u, 139050u), Struct_1(true, 0i, vec4<u32>(11892u, 29092u, 4294967295u, 0u), vec3<i32>(2618i, 1i, -1012i)), Struct_1(false, 1i, vec4<u32>(4294967295u, 1u, 69943u, 11334u), vec3<i32>(0i, -45062i, -50197i)), false, vec2<u32>(41068u, 29987u));

var<private> global2: array<vec4<i32>, 24>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> i32 {
    var var_0 = Struct_1(any(select(select(select(vec3<bool>(arg_1.a, true, true), vec3<bool>(arg_0.a, global1.d, arg_1.a), vec3<bool>(true, false, true)), !vec3<bool>(true, global1.b.a, global1.c.a), arg_1.a), !(!vec3<bool>(true, arg_1.a, arg_0.a)), vec3<bool>(!arg_0.a, true, arg_0.a))), -16916i, arg_1.c, _wgslsmith_mod_vec3_i32(firstLeadingBit(~vec3<i32>(arg_0.d.x, global1.b.b, 2147483647i)) & vec3<i32>(firstTrailingBit(arg_1.d.x), ~arg_0.d.x, global1.b.d.x), arg_0.d));
    var var_1 = arg_0;
    var var_2 = var_0.b;
    global2 = array<vec4<i32>, 24>();
    global1 = Struct_2(_wgslsmith_mult_vec2_u32(arg_1.c.zz, ~vec2<u32>(min(4294967295u, 4294967295u), arg_0.c.x)), Struct_1(arg_0.c.x > 0u, _wgslsmith_dot_vec3_i32(firstLeadingBit(firstTrailingBit(vec3<i32>(2147483647i, global1.c.d.x, var_0.b))), _wgslsmith_mult_vec3_i32(vec3<i32>(12311i, 2147483647i, -42995i), arg_0.d & arg_0.d)), arg_1.c, _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.b, -var_1.d.x, var_0.b), arg_0.d, arg_0.d)), Struct_1(all(!vec4<bool>(true, arg_0.a, true, false)), _wgslsmith_sub_i32(-var_1.b, global1.c.b), ~select(vec4<u32>(arg_0.c.x, 4294967295u, 30654u, 1u), ~vec4<u32>(30113u, var_0.c.x, 53296u, arg_1.c.x), vec4<bool>(false, false, var_0.a, global1.d)), global1.c.d), var_1.a, _wgslsmith_mult_vec2_u32(reverseBits(firstLeadingBit(_wgslsmith_add_vec2_u32(var_0.c.yx, vec2<u32>(arg_0.c.x, 1u)))), _wgslsmith_div_vec2_u32(vec2<u32>(1u, abs(23963u)), ~var_0.c.wz ^ abs(vec2<u32>(var_0.c.x, 4294967295u)))));
    return abs(~(~firstLeadingBit(var_0.d.x | 2147483647i)));
}

fn func_2(arg_0: bool) -> vec2<i32> {
    var var_0 = Struct_2(u_input.a.zx, Struct_1(!(arg_0 || (true & global1.d)), -2147483647i, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, global1.e.x, u_input.a.x, global1.a.x), ~vec4<u32>(0u, global1.b.c.x, 1u, global1.b.c.x), global1.c.c), vec3<i32>(i32(-1i) * -1i, -97635i, -_wgslsmith_mult_i32(global1.b.b, global1.c.b))), global1.c, all(!(!select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(false, arg_0, global1.d), global1.d))), ~vec2<u32>(global1.c.c.x, u_input.a.x));
    var var_1 = -func_3(var_0.c, Struct_1(true, ~global1.c.b, _wgslsmith_div_vec4_u32(var_0.c.c, global1.b.c), vec3<i32>(-1i) * -global1.c.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, -1000f, -651f, 235f), vec4<f32>(1f, 1f, 1f, 1f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-914f, -1000f, 1046f, -102f) + vec4<f32>(555f, -192f, 2011f, 681f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-741f, 847f, -433f, 1090f)))));
    var var_2 = firstLeadingBit(1i) > global1.b.d.x;
    var var_3 = Struct_1(select(any(vec4<bool>(arg_0 | var_0.c.a, arg_0, any(vec3<bool>(var_0.d, arg_0, false)), true)), false, arg_0), firstTrailingBit(0i), vec4<u32>(_wgslsmith_div_u32(~(global1.c.c.x & u_input.a.x), var_0.c.c.x), 1u, global1.c.c.x, var_0.e.x), ~_wgslsmith_clamp_vec3_i32(global1.b.d, var_0.b.d, abs(vec3<i32>(21998i, global1.b.d.x, -1i))));
    let var_4 = Struct_1(51662u == ~var_0.e.x, var_3.d.x, var_0.b.c, _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-48432i, var_0.c.d.x, var_3.b), ~min(firstLeadingBit(vec3<i32>(2147483647i, 2147483647i, global1.c.d.x)), _wgslsmith_mod_vec3_i32(global1.c.d, vec3<i32>(var_3.b, var_0.b.d.x, -18729i))), -select(vec3<i32>(var_0.b.b, 3774i, 19424i), abs(vec3<i32>(var_3.d.x, -1i, var_0.c.b)), all(vec3<bool>(arg_0, var_3.a, true)))));
    return -select(~var_3.d.xy, var_3.d.yz, vec2<bool>(var_4.a, var_0.c.a)) | -global1.b.d.yy;
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> i32 {
    var var_0 = u_input.a;
    var_0 = global1.b.c.xyz;
    global1 = Struct_2(~select(~vec2<u32>(52968u, global1.e.x), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(21631u, arg_3.c.x), vec2<u32>(14347u, 1u)), 0u), true), Struct_1(true, arg_3.d.x, vec4<u32>((35015u | global1.c.c.x) >> (countOneBits(78527u) % 32u), global1.e.x, ~(~65213u), 39753u), global1.b.d), Struct_1(true, 0i, min(vec4<u32>(var_0.x, var_0.x, arg_1, 0u) & _wgslsmith_mod_vec4_u32(global1.b.c, vec4<u32>(0u, arg_1, 1u, 25161u)), vec4<u32>(~arg_3.c.x, ~arg_3.c.x, 24680u, reverseBits(1u))), _wgslsmith_clamp_vec3_i32(arg_3.d, vec3<i32>(global1.c.b, arg_0.x, global1.b.b), ~vec3<i32>(arg_0.x, arg_0.x, arg_0.x)) & abs(~global1.b.d)), arg_3.a, global1.b.c.zy);
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-162f, arg_2))))), _wgslsmith_f_op_f32(-arg_2)));
    global0 = array<Struct_2, 4>();
    return func_2(!any(!vec2<bool>(false, arg_3.a))).x;
}

fn func_1(arg_0: Struct_2) -> vec3<i32> {
    return vec3<i32>(_wgslsmith_mod_i32(func_4(func_2(global1.d) << (~vec2<u32>(44801u, arg_0.a.x) % vec2<u32>(32u)), _wgslsmith_sub_u32(u_input.a.x >> (global1.e.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(global1.e.x, 1u), global1.b.c.yx)), 1853f, arg_0.c), 0i), -35279i, ~select(firstLeadingBit(max(1i, global1.b.b)), global1.b.d.x, arg_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<i32>, 24>();
    var var_0 = global1.b;
    var var_1 = Struct_1(true, 2147483647i, _wgslsmith_mult_vec4_u32(~(vec4<u32>(var_0.c.x, var_0.c.x, 1u, var_0.c.x) >> (~var_0.c % vec4<u32>(32u))), vec4<u32>(u_input.a.x, 0u, (u_input.a.x ^ 12590u) & u_input.a.x, firstLeadingBit(1u))), ~(~(func_1(Struct_2(vec2<u32>(var_0.c.x, u_input.a.x), Struct_1(true, -1i, vec4<u32>(30716u, u_input.a.x, global1.b.c.x, 4294967295u), global1.b.d), Struct_1(global1.b.a, -40182i, vec4<u32>(31105u, var_0.c.x, 0u, 4294967295u), vec3<i32>(global1.b.b, -2147483647i, global1.c.b)), var_0.a, u_input.a.zy)) << (vec3<u32>(4294967295u, 67050u, var_0.c.x) % vec3<u32>(32u)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -400f), _wgslsmith_f_op_f32(min(2913f, -1396f)), -808f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(951f, 1000f, -733f), vec3<f32>(-369f, 597f, -1325f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-162f, -362f, -2197f))))));
    let var_3 = vec4<i32>(-46692i, countOneBits(32421i) | global1.c.d.x, -1i, firstLeadingBit(min(-1i, ~_wgslsmith_sub_i32(var_1.b, global1.b.b))));
    let var_4 = global1.b.c.xww;
    var var_5 = _wgslsmith_f_op_vec3_f32(var_2 * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(var_2)), vec3<f32>(var_2.x, var_2.x, var_2.x))) - vec3<f32>(_wgslsmith_div_f32(880f, -1094f), _wgslsmith_f_op_f32(var_2.x + var_2.x), _wgslsmith_div_f32(1161f, var_2.x))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_2, _wgslsmith_f_op_vec3_f32(vec3<f32>(-280f, var_2.x, var_2.x) + var_2))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_2))))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.b.d.yx);
}

