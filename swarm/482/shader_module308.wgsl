struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(35081i, vec3<u32>(48670u, 1788u, 38142u)), Struct_1(0i, vec3<u32>(53660u, 30292u, 13560u)), Struct_1(25201i, vec3<u32>(4294967295u, 10786u, 78915u)), Struct_1(i32(-2147483648), vec3<u32>(1u, 37900u, 4294967295u)), Struct_1(-2866i, vec3<u32>(0u, 1u, 59311u)), Struct_1(0i, vec3<u32>(0u, 1u, 24212u)), Struct_1(-31314i, vec3<u32>(27164u, 3138u, 70904u)), Struct_1(-1i, vec3<u32>(42645u, 53986u, 0u)), Struct_1(-1i, vec3<u32>(0u, 4294967295u, 24250u)), Struct_1(1i, vec3<u32>(1u, 36138u, 59633u)), Struct_1(2147483647i, vec3<u32>(2261u, 18870u, 1u)), Struct_1(52009i, vec3<u32>(24132u, 4294967295u, 1u)), Struct_1(2147483647i, vec3<u32>(59866u, 67374u, 4294967295u)), Struct_1(9895i, vec3<u32>(291u, 79056u, 14489u)), Struct_1(1i, vec3<u32>(62758u, 1u, 47131u)), Struct_1(56720i, vec3<u32>(14577u, 49956u, 68504u)), Struct_1(28431i, vec3<u32>(0u, 1u, 8271u)), Struct_1(0i, vec3<u32>(44604u, 0u, 4294967295u)), Struct_1(42144i, vec3<u32>(1u, 5172u, 0u)), Struct_1(38804i, vec3<u32>(4294967295u, 4294967295u, 19490u)), Struct_1(30557i, vec3<u32>(4294967295u, 0u, 1u)), Struct_1(-16596i, vec3<u32>(0u, 11360u, 4294967295u)), Struct_1(-26708i, vec3<u32>(0u, 44067u, 1u)), Struct_1(0i, vec3<u32>(65788u, 40679u, 1u)), Struct_1(i32(-2147483648), vec3<u32>(1u, 1u, 0u)), Struct_1(i32(-2147483648), vec3<u32>(1u, 9791u, 9993u)), Struct_1(2147483647i, vec3<u32>(4294967295u, 4294967295u, 22430u)), Struct_1(0i, vec3<u32>(108094u, 2739u, 117543u)), Struct_1(0i, vec3<u32>(0u, 0u, 25653u)), Struct_1(27168i, vec3<u32>(4294967295u, 44596u, 37337u)), Struct_1(58316i, vec3<u32>(1u, 73416u, 1u)));

var<private> global2: array<bool, 24>;

var<private> global3: f32 = -267f;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = 2250u;
    global2 = array<bool, 24>();
    var var_1 = reverseBits(select(_wgslsmith_mod_i32(-global0.a, firstTrailingBit(u_input.a)), -1i, global2[_wgslsmith_index_u32(4294967295u, 24u)]));
    let var_2 = ~_wgslsmith_mult_vec3_u32(reverseBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, global0.b.x), global0.b)), ~arg_1.b);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-310f - 788f), _wgslsmith_f_op_f32(trunc(-229f)))))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1570f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 257f)))) + 245f));
    return ~(~_wgslsmith_mod_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(-42366i, global0.a, global0.a, -1i), vec4<i32>(0i, global0.a, 53622i, 2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.a, arg_1.a, -2147483647i, global0.a), vec4<i32>(arg_1.a, global0.a, -7281i, 36724i)), global2[_wgslsmith_index_u32(~global0.b.x, 24u)]), vec4<i32>(global0.a >> (1u % 32u), arg_1.a & u_input.a, _wgslsmith_mod_i32(33815i, u_input.e), _wgslsmith_add_i32(0i, -10126i))));
}

fn func_2() -> Struct_1 {
    global3 = 1000f;
    var var_0 = vec3<i32>(33105i, u_input.e, 1i);
    var var_1 = select(abs(func_3(~max(4294967295u, global0.b.x), global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(global0.b.x, 0u), 31u)])), vec4<i32>(-1i, global0.a, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(var_0.x, -2147483647i, -74837i)), reverseBits(vec3<i32>(18199i, 1i, var_0.x))), -2147483647i) ^ vec4<i32>(global0.a, ~(~2147483647i), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.e, 1i), global0.a, 22146i >> (1u % 32u)), -10306i), 194f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1214f, -1733f, global2[_wgslsmith_index_u32(0u, 24u)])) + 149f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-192f + 424f), 861f))));
    var_0 = firstTrailingBit(var_1.xzw) << (_wgslsmith_sub_vec3_u32(~(~global0.b), _wgslsmith_mod_vec3_u32(~global0.b ^ vec3<u32>(80302u, 0u, global0.b.x), ~vec3<u32>(u_input.c.x, global0.b.x, global0.b.x))) % vec3<u32>(32u));
    var_1 = _wgslsmith_add_vec4_i32(~(~select(vec4<i32>(1i, 1i, 1i, 11052i), firstTrailingBit(vec4<i32>(0i, global0.a, var_1.x, 0i)), vec4<bool>(global2[_wgslsmith_index_u32(global0.b.x, 24u)], true, global2[_wgslsmith_index_u32(global0.b.x, 24u)], false))), func_3(1u, Struct_1(2147483647i, _wgslsmith_mod_vec3_u32(global0.b, global0.b))));
    return Struct_1(global0.a, ~vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(global0.b.yz, u_input.c), _wgslsmith_div_u32(15339u, 50812u)), 0u, min(~28993u, 0u)));
}

fn func_1() -> vec3<u32> {
    let var_0 = func_2();
    var var_1 = ~global0.a;
    let var_2 = global1[_wgslsmith_index_u32(global0.b.x >> (~(~reverseBits(34658u | var_0.b.x)) % 32u), 31u)];
    let var_3 = _wgslsmith_mod_u32(var_2.b.x, var_2.b.x);
    var var_4 = _wgslsmith_div_f32(-625f, 627f);
    return var_0.b ^ _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(var_2.b | ~var_0.b, _wgslsmith_mod_vec3_u32(~var_2.b, vec3<u32>(1u, u_input.b.x, global0.b.x)), ~(~vec3<u32>(4294967295u, var_2.b.x, 46980u))), vec3<u32>(_wgslsmith_mod_u32(1u, var_0.b.x), 64985u, ~4294967295u) | ~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, var_3, 4995u), var_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 31>();
    var var_0 = Struct_1(select(~u_input.e, -(~(34818i << (u_input.d % 32u))), true), ~func_1());
    var var_1 = Struct_1(0i, vec3<u32>(1u, u_input.c.x, 11642u));
    global1 = array<Struct_1, 31>();
    let var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1732f, 675f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1133f, -739f) - 1215f), _wgslsmith_f_op_f32(floor(-1202f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1036f, -452f, -1055f, 768f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(339f, 179f, -865f, -1963f), vec4<f32>(460f, -644f, -1447f, -1414f), vec4<bool>(global2[_wgslsmith_index_u32(global0.b.x, 24u)], true, false, false))))))), true));
    let var_3 = _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(7151i, global0.a) << (var_1.b.zx % vec2<u32>(32u)), select(vec2<i32>(var_1.a, -23859i), vec2<i32>(-1i, 0i), vec2<bool>(false, true))), -47335i, u_input.e, _wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, 2147483647i), ~var_1.a))), _wgslsmith_f_op_vec3_f32(-var_2.xzw), global0.b.x);
}

