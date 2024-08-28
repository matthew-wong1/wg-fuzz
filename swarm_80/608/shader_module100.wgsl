struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec3<i32>,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_2,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(vec4<bool>(false, true, true, false), vec3<u32>(0u, 69785u, 0u)), Struct_3(vec4<bool>(false, false, false, true), vec3<u32>(1u, 4294967295u, 9733u)), Struct_3(vec4<bool>(false, true, false, false), vec3<u32>(1u, 1u, 10019u)), Struct_3(vec4<bool>(true, true, false, false), vec3<u32>(24094u, 4475u, 4311u)), Struct_3(vec4<bool>(true, true, true, true), vec3<u32>(732u, 61116u, 0u)), Struct_3(vec4<bool>(false, true, false, false), vec3<u32>(0u, 119044u, 1u)), Struct_3(vec4<bool>(false, true, false, false), vec3<u32>(42108u, 4294967295u, 14341u)), Struct_3(vec4<bool>(true, false, false, true), vec3<u32>(50341u, 20590u, 4294967295u)), Struct_3(vec4<bool>(false, false, false, true), vec3<u32>(54391u, 1u, 16442u)), Struct_3(vec4<bool>(false, true, true, false), vec3<u32>(67475u, 9248u, 1u)), Struct_3(vec4<bool>(true, true, true, true), vec3<u32>(43834u, 8710u, 70800u)), Struct_3(vec4<bool>(false, true, true, true), vec3<u32>(0u, 0u, 0u)), Struct_3(vec4<bool>(false, false, false, true), vec3<u32>(0u, 16708u, 30013u)), Struct_3(vec4<bool>(true, false, true, false), vec3<u32>(0u, 40371u, 1u)), Struct_3(vec4<bool>(true, true, true, true), vec3<u32>(48123u, 0u, 1u)), Struct_3(vec4<bool>(false, true, true, true), vec3<u32>(17343u, 0u, 47219u)), Struct_3(vec4<bool>(false, true, true, false), vec3<u32>(1u, 19196u, 4600u)), Struct_3(vec4<bool>(true, false, false, false), vec3<u32>(4294967295u, 1331u, 48307u)), Struct_3(vec4<bool>(false, true, false, true), vec3<u32>(12213u, 11801u, 79087u)), Struct_3(vec4<bool>(true, false, false, false), vec3<u32>(30931u, 14060u, 0u)), Struct_3(vec4<bool>(false, true, false, false), vec3<u32>(1u, 1u, 26115u)), Struct_3(vec4<bool>(true, false, false, false), vec3<u32>(0u, 1u, 0u)), Struct_3(vec4<bool>(true, true, false, true), vec3<u32>(4294967295u, 12045u, 61213u)), Struct_3(vec4<bool>(false, true, false, true), vec3<u32>(1u, 54181u, 5299u)), Struct_3(vec4<bool>(true, true, false, true), vec3<u32>(41397u, 46001u, 1u)), Struct_3(vec4<bool>(false, false, true, false), vec3<u32>(4294967295u, 3704u, 1u)), Struct_3(vec4<bool>(false, true, false, false), vec3<u32>(1u, 74342u, 1u)), Struct_3(vec4<bool>(false, false, true, true), vec3<u32>(4294967295u, 1u, 76555u)), Struct_3(vec4<bool>(true, true, false, false), vec3<u32>(43321u, 0u, 28545u)), Struct_3(vec4<bool>(true, false, false, false), vec3<u32>(1u, 0u, 74975u)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: u32) -> vec4<i32> {
    let var_0 = max(min(vec4<u32>(arg_3, 0u, 4294967295u, 4294967295u) ^ vec4<u32>(1u, arg_3, 0u, arg_0.x), abs(~vec4<u32>(arg_0.x, arg_3, 29615u, arg_0.x))), ~_wgslsmith_add_vec4_u32(vec4<u32>(25846u, 12457u, arg_3, 55239u), arg_0)) ^ arg_0;
    global0 = array<Struct_3, 30>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-309f * -2012f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -965f)), -1313f)));
    var var_2 = ~_wgslsmith_div_i32(-arg_2.x, 1i) == arg_1.x;
    let var_3 = Struct_3(vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-138f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -277f)), 508f < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x + -761f))), all(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), false)), select(all(vec2<bool>(true, false)) & all(vec3<bool>(false, true, true)), false, true)), vec3<u32>(~0u, ~(arg_3 >> (30534u % 32u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(min(vec2<u32>(arg_3, 102982u), vec2<u32>(76817u, arg_0.x)), arg_0.xx >> (vec2<u32>(27981u, 4294967295u) % vec2<u32>(32u))), _wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(var_0.x, var_0.x, 41871u, arg_0.x) >> (arg_0 % vec4<u32>(32u))))));
    return _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(~select(select(arg_1, arg_1, vec4<bool>(var_3.a.x, var_3.a.x, var_3.a.x, false)), arg_1 << (arg_0 % vec4<u32>(32u)), all(vec2<bool>(false, var_3.a.x))), select(vec4<i32>(~u_input.a.x, arg_1.x, 2029i, arg_2.x & -1i), vec4<i32>(u_input.a.x, arg_1.x, -2147483647i, -1i) >> (vec4<u32>(55923u, arg_3, var_0.x, 4294967295u) % vec4<u32>(32u)), var_3.a)), arg_1);
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> u32 {
    let var_0 = Struct_5(arg_0, _wgslsmith_sub_vec4_i32(~(~max(vec4<i32>(0i, 36526i, arg_1, -877i), vec4<i32>(-26292i, arg_0.b, 1i, -65086i))), -func_3(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 29540u), vec4<i32>(1i, 80535i, u_input.a.x, arg_1), u_input.a, arg_0.d.a.x) << (min(reverseBits(vec4<u32>(9798u, arg_0.d.a.x, 0u, arg_0.a)), max(vec4<u32>(arg_0.a, arg_0.d.a.x, arg_0.d.a.x, 1u), vec4<u32>(18593u, arg_0.d.a.x, 0u, arg_0.a))) % vec4<u32>(32u))), arg_0, select(!(!select(vec2<bool>(arg_0.c, false), vec2<bool>(false, arg_0.c), arg_0.c)), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(arg_0.c, true), vec2<bool>(false, true)), true), select(!vec2<bool>(true, arg_0.c), vec2<bool>(arg_0.c, true), all(vec4<bool>(arg_0.c, arg_0.c, false, arg_0.c))), true), arg_0.c), Struct_1(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_0.d.a, ~arg_0.d.a, vec3<u32>(4294967295u, 4294967295u, 43064u)), vec3<u32>(min(29709u, 20722u), arg_0.d.a.x, 47563u & arg_0.a))));
    let var_1 = Struct_4(Struct_2(_wgslsmith_dot_vec4_u32(select(reverseBits(vec4<u32>(arg_0.a, 64668u, 87397u, var_0.c.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, arg_0.a, arg_0.a, 1u), vec4<u32>(31411u, 12048u, 19894u, arg_0.d.a.x)), true), _wgslsmith_sub_vec4_u32(~vec4<u32>(0u, arg_0.d.a.x, 68467u, var_0.e.a.x), vec4<u32>(4294967295u, 0u, arg_0.d.a.x, var_0.c.a))), -u_input.a.x, true, var_0.a.d), vec2<i32>(_wgslsmith_add_i32(-1i, -1i), -13218i), var_0.b.yzw, arg_0);
    global0 = array<Struct_3, 30>();
    global0 = array<Struct_3, 30>();
    global0 = array<Struct_3, 30>();
    return ~(~reverseBits(firstTrailingBit(1u)) & ~0u);
}

fn func_1() -> vec2<u32> {
    global0 = array<Struct_3, 30>();
    global0 = array<Struct_3, 30>();
    var var_0 = select(select(!vec3<bool>(true, true, any(vec2<bool>(true, false))), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), func_2(Struct_2(14464u, u_input.a.x, false, Struct_1(vec3<u32>(54443u, 4294967295u, 4294967295u))), firstTrailingBit(u_input.a.x)) == 4294967295u), select(select(vec3<bool>(true, u_input.a.x != 0i, true), vec3<bool>(false, true, true), !all(vec2<bool>(false, false))), select(vec3<bool>(select(true, false, false), u_input.a.x <= u_input.a.x, true), vec3<bool>(true, any(vec4<bool>(false, false, false, true)), true), false), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), vec3<bool>(all(vec3<bool>(true, true, false)), select(false, true, true), true), any(vec4<bool>(true, true, true, true)))), true);
    let var_1 = vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 74299u), vec2<u32>(0u, 0u)), 60558u >> (1u % 32u)) & abs(firstTrailingBit(39966u)), _wgslsmith_mult_u32(23271u, 46467u), ~4294967295u) >> (select(~(~vec3<u32>(1u, 1u, 1u)), vec3<u32>(firstTrailingBit(37427u) ^ _wgslsmith_mult_u32(1u, 1u), 59818u ^ _wgslsmith_clamp_u32(0u, 0u, 11481u), 1u), !vec3<bool>(true, !var_0.x, all(var_0.zz))) % vec3<u32>(32u));
    global0 = array<Struct_3, 30>();
    return var_1.yx;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 30>();
    let var_0 = max(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 34862u, 31078u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)), max(vec4<u32>(8086u, 63993u, 1u, 1u), firstTrailingBit(vec4<u32>(4435u, 25178u, 1u, 22843u)))), vec4<u32>(firstLeadingBit(1u), 4294967295u, ~abs(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 5092u), func_1()))), reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(11536u, 3682u, 1u, 59720u), vec4<u32>(4058u, 26205u, 1u, 1u)), _wgslsmith_mult_u32(62242u, 1u), _wgslsmith_div_u32(1u, 27031u)), vec4<u32>(77998u, 4294967295u, 4294967295u, 59173u) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 133424u, 35164u, 5645u), vec4<u32>(24914u, 78724u, 80742u, 12304u), vec4<u32>(0u, 5001u, 4294967295u, 65752u)) % vec4<u32>(32u)))));
    var var_1 = !vec4<bool>(true && (u_input.a.x < u_input.a.x), false, !(!all(vec3<bool>(false, true, false))), true);
    let var_2 = vec2<u32>(var_0.x, _wgslsmith_add_u32(~_wgslsmith_add_u32(0u, 0u), _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(0u, 1u, 4156u), var_0.x)));
    let var_3 = abs(4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<i32>(firstLeadingBit(u_input.a.x), _wgslsmith_clamp_i32(1i, u_input.a.x >> (var_0.x % 32u), _wgslsmith_div_i32(-2791i, 41658i)), u_input.a.x, u_input.a.x)), _wgslsmith_div_u32(firstLeadingBit(~(~var_3)), var_3));
}

