struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec4<u32> = vec4<u32>(0u, 0u, 4294967295u, 22175u);

var<private> global2: Struct_3;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1) -> u32 {
    let var_0 = global2.a.a.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(866f, -468f, 194f, -407f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-268f, -1840f, _wgslsmith_f_op_f32(f32(-1f) * -909f), -300f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2377f, -659f, -220f, 2133f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1245f, -218f, 388f, 2164f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(109f, -555f, -1028f, -982f)), vec4<bool>(false, arg_0.b.a.a.x, true, true)))))));
    global0 = max(_wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(~vec4<u32>(arg_1.a, 0u, arg_1.a, global3.a), ~vec4<u32>(0u, 11825u, arg_1.a, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~min(vec4<u32>(global3.a, 86727u, arg_0.b.a.b.a, global1.x), vec4<u32>(global0.x, 29734u, 48370u, global3.a)))), firstTrailingBit(vec4<u32>(max(select(global2.a.b.a, 0u, false), arg_0.a.a), arg_0.b.a.b.a, 39823u, abs(reverseBits(global1.x)))));
    var var_2 = ~_wgslsmith_clamp_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 4294967295u, global0.x), vec4<u32>(1u, arg_1.a, global2.a.b.a, global0.x)), countOneBits(~vec4<u32>(arg_1.a, arg_0.b.a.b.a, 61104u, global2.a.b.a)), min(vec4<u32>(74405u, 1u, 75250u, arg_0.b.a.b.a), vec4<u32>(global0.x, 1u, 10279u, arg_0.a.a) >> (vec4<u32>(global0.x, global0.x, 104065u, global1.x) % vec4<u32>(32u))));
    let var_3 = vec3<i32>(u_input.d.x, 24467i, 1i);
    return ~(~(~global1.x));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: bool) -> Struct_1 {
    var var_0 = u_input.c;
    var var_1 = Struct_4(global2.a.b, Struct_3(Struct_2(!global2.a.a, global2.a.b)), all(vec2<bool>(true, true)));
    var var_2 = Struct_2(vec4<bool>(all(vec4<bool>(true, true, arg_2, true)), arg_2, ~0u > var_1.b.a.b.a, arg_1.x), global2.a.b);
    var var_3 = Struct_4(Struct_1(~global1.x & global1.x), var_1.b, true);
    var var_4 = var_2.b;
    return Struct_1(~func_3(Struct_4(Struct_1(17796u), var_1.b, false), var_2.b));
}

fn func_1() -> Struct_1 {
    return func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1000f) * vec2<f32>(1621f, -923f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1035f, -1106f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-829f, -304f)), vec2<f32>(2045f, 189f))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-1253f + 925f), _wgslsmith_f_op_f32(select(-168f, -613f, global2.a.a.x)))))), select(vec3<bool>(global2.a.a.x, !global2.a.a.x, all(select(vec4<bool>(true, global2.a.a.x, global2.a.a.x, global2.a.a.x), global2.a.a, true))), global2.a.a.xyw, global2.a.a.www), all(vec2<bool>(any(!vec4<bool>(global2.a.a.x, global2.a.a.x, global2.a.a.x, global2.a.a.x)), !all(vec2<bool>(global2.a.a.x, global2.a.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.yzx;
    let var_1 = func_1();
    var var_2 = -342i;
    var var_3 = var_1;
    let var_4 = _wgslsmith_mult_vec4_u32(~firstTrailingBit(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, 1u, var_1.a, var_1.a), vec4<u32>(1u, 4294967295u, 17386u, global0.x), vec4<u32>(var_3.a, 4294967295u, global1.x, global3.a))), vec4<u32>(35264u, _wgslsmith_sub_u32(func_1().a, min(~var_0.x, var_3.a)), var_0.x, _wgslsmith_div_u32(~func_2(vec2<f32>(-598f, -793f), vec3<bool>(true, false, true), true).a, firstLeadingBit(var_3.a >> (0u % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(~global1.ww >> (max(vec2<u32>(14496u, 9871u), _wgslsmith_add_vec2_u32(global0.zz, vec2<u32>(0u, 130902u))) % vec2<u32>(32u)), global0.zx), vec2<u32>(41274u, global0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -1000f))))))), ~_wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.d.x, u_input.d.x, u_input.c, 4473i)), _wgslsmith_mult_vec4_i32(min(vec4<i32>(47900i, u_input.c, 31645i, 9646i), vec4<i32>(-37672i, u_input.c, 15161i, u_input.b.x)), vec4<i32>(0i, 5293i, 2147483647i, -31131i) >> (vec4<u32>(30021u, var_3.a, 256u, var_4.x) % vec4<u32>(32u)))), 790f);
}

