struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(307f, -658f);

var<private> global1: array<Struct_2, 14>;

var<private> global2: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(4294967295u, 22873u, 0u, 0u), vec4<u32>(0u, 4294967295u, 57312u, 4294967295u), vec4<u32>(41651u, 24589u, 1u, 35740u), vec4<u32>(0u, 276u, 20630u, 1u), vec4<u32>(1u, 1u, 1u, 26307u), vec4<u32>(20938u, 19096u, 0u, 0u), vec4<u32>(1u, 26565u, 1u, 1u), vec4<u32>(0u, 69102u, 4294967295u, 1u), vec4<u32>(4294967295u, 109138u, 10371u, 102368u), vec4<u32>(0u, 24123u, 1u, 0u), vec4<u32>(0u, 4294967295u, 4294967295u, 40498u), vec4<u32>(1u, 21507u, 79257u, 5459u), vec4<u32>(0u, 4294967295u, 10061u, 4294967295u), vec4<u32>(0u, 0u, 1u, 0u), vec4<u32>(0u, 0u, 62543u, 51226u), vec4<u32>(0u, 4294967295u, 0u, 1u), vec4<u32>(16427u, 4294967295u, 84973u, 128045u), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(46928u, 4294967295u, 72984u, 1u), vec4<u32>(1u, 15246u, 15875u, 69680u), vec4<u32>(65253u, 55330u, 1u, 4294967295u));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> vec3<i32> {
    global2 = array<vec4<u32>, 21>();
    var var_0 = Struct_1(_wgslsmith_sub_vec2_i32(reverseBits(~vec2<i32>(1i, 0i) >> (u_input.a.yw % vec2<u32>(32u))), abs(select(_wgslsmith_mod_vec2_i32(vec2<i32>(-22191i, 2147483647i), vec2<i32>(5592i, 76939i)), _wgslsmith_mod_vec2_i32(vec2<i32>(-28645i, 39682i), vec2<i32>(13103i, 35135i)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))))), ~1u, 2147483647i, _wgslsmith_dot_vec2_i32(firstLeadingBit(~reverseBits(vec2<i32>(-32154i, -2147483647i))), select(abs(vec2<i32>(-2147483647i, 71282i)), vec2<i32>(2147483647i, -23938i), vec2<bool>(true, true)) | (min(vec2<i32>(-2147483647i, 29943i), vec2<i32>(2147483647i, 2147483647i)) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(67665u, u_input.a.x), vec2<u32>(3574u, 0u)) % vec2<u32>(32u)))), 2147483647i << (u_input.a.x % 32u));
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1728f)), vec2<f32>(global0.x, 2251f)))) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), -533f)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-385f + 552f)))))));
    let var_1 = Struct_5(all(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false)), true), !select(false, false, true))));
    let var_2 = Struct_5(var_1.a);
    return ~select(select(vec3<i32>(var_0.e, abs(-37677i), var_0.a.x), ~(~vec3<i32>(17678i, var_0.e, 2147483647i)), true), -min(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.c, 1i, var_0.c), vec3<i32>(-1590i, 2147483647i, -2147483647i)), vec3<i32>(var_0.d, -12425i, var_0.c) & vec3<i32>(-25412i, 14786i, -37726i)), !vec3<bool>(any(vec2<bool>(var_2.a, var_2.a)), any(vec2<bool>(var_1.a, false)), -1073f >= global0.x));
}

fn func_2() -> Struct_2 {
    var var_0 = u_input.a.wwz;
    var var_1 = vec3<bool>(true, true, true);
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(228f, -838f, 1765f))))))));
    var var_3 = _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(reverseBits(-2147483647i) >> (var_0.x % 32u), 1i, _wgslsmith_clamp_i32(2147483647i, 1i, 1i)), vec3<i32>(5351i, 1i, -2147483647i)), ~func_3(), ~(~(~abs(vec3<i32>(-1i, -1i, -21835i)))));
    var var_4 = var_2.xx;
    return Struct_2(Struct_1(_wgslsmith_clamp_vec2_i32(-var_3.zx, _wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(-2147483647i, 1i)), ~vec2<i32>(var_3.x, var_3.x)), var_3.yx), 22540u, -(~var_3.x), -1i, var_3.x), !select(vec4<bool>(any(var_1.zy), all(vec2<bool>(false, false)), all(vec4<bool>(var_1.x, true, var_1.x, true)), select(var_1.x, var_1.x, var_1.x)), !select(vec4<bool>(true, var_1.x, var_1.x, false), vec4<bool>(true, var_1.x, var_1.x, var_1.x), var_1.x), vec4<bool>(all(var_1.zx), !var_1.x, all(vec4<bool>(false, var_1.x, false, false)), var_3.x == -1i)));
}

fn func_4(arg_0: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, -509f)))));
    var var_1 = Struct_3(-func_2().a.c);
    global2 = array<vec4<u32>, 21>();
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-489f, global0.x, var_0, -746f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1000f)), var_0)), 1583f, _wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.x, 220f)), var_0))));
    var var_3 = Struct_5(var_2.x != -1200f);
    return global0.x;
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -463f) + _wgslsmith_f_op_f32(func_4(func_2()))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, -492f))) * _wgslsmith_f_op_f32(floor(global0.x))))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(913f, -807f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(2126f)))))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -277f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-449f)))))));
    var var_1 = Struct_1(~firstTrailingBit(vec2<i32>(1i, 1i)), 48860u, _wgslsmith_mod_i32(~abs(1i), 14231i), 1i, _wgslsmith_mult_i32(max(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -8301i, -35307i, 1i) << (u_input.a % vec4<u32>(32u)), abs(vec4<i32>(1i, 47635i, -1i, 28480i))), ~(~(-1i))), i32(-1i) * -21418i));
    global2 = array<vec4<u32>, 21>();
    var var_2 = Struct_5(false);
    return Struct_3(~var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global2 = array<vec4<u32>, 21>();
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -1201f) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, global0.x))))))));
    var var_1 = (var_0.a & ~firstTrailingBit(_wgslsmith_add_i32(var_0.a, var_0.a))) >> (u_input.a.x % 32u);
    global1 = array<Struct_2, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(~global2[_wgslsmith_index_u32(min(abs(u_input.a.x), 4294967295u) ^ u_input.a.x, 21u)]);
}

