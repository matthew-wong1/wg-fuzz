struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(-16003i, Struct_1(9652i, vec2<u32>(0u, 0u), -22632i), Struct_1(0i, vec2<u32>(0u, 0u), 32157i), true), Struct_2(-1i, Struct_1(76116i, vec2<u32>(4294967295u, 68434u), 1i), Struct_1(-56395i, vec2<u32>(33860u, 1u), 11555i), true), Struct_2(-20540i, Struct_1(-20413i, vec2<u32>(23151u, 0u), 10191i), Struct_1(-1i, vec2<u32>(0u, 25170u), 13424i), false), Struct_2(5992i, Struct_1(-19268i, vec2<u32>(11844u, 0u), 0i), Struct_1(24511i, vec2<u32>(24006u, 1u), -19901i), false), Struct_2(0i, Struct_1(25671i, vec2<u32>(0u, 4294967295u), 2147483647i), Struct_1(-73509i, vec2<u32>(38050u, 1u), 2147483647i), false), Struct_2(-7024i, Struct_1(1i, vec2<u32>(49770u, 1u), -1i), Struct_1(0i, vec2<u32>(1u, 52800u), 0i), true), Struct_2(-13077i, Struct_1(-34217i, vec2<u32>(84825u, 0u), 1i), Struct_1(-1i, vec2<u32>(13333u, 30346u), 1i), true), Struct_2(-34482i, Struct_1(-1i, vec2<u32>(22228u, 21279u), 762i), Struct_1(-1i, vec2<u32>(4294967295u, 0u), 730i), true), Struct_2(21724i, Struct_1(1i, vec2<u32>(1u, 0u), 17873i), Struct_1(-45095i, vec2<u32>(0u, 45312u), -23136i), true), Struct_2(0i, Struct_1(1i, vec2<u32>(29134u, 35729u), -30709i), Struct_1(0i, vec2<u32>(3510u, 4294967295u), 1i), false), Struct_2(1i, Struct_1(-1i, vec2<u32>(32456u, 30314u), 49785i), Struct_1(-97302i, vec2<u32>(0u, 4985u), 2147483647i), false), Struct_2(-1i, Struct_1(17463i, vec2<u32>(70269u, 22512u), 9438i), Struct_1(0i, vec2<u32>(4294967295u, 1u), -47817i), true), Struct_2(2147483647i, Struct_1(i32(-2147483648), vec2<u32>(58534u, 0u), 15598i), Struct_1(-21397i, vec2<u32>(39862u, 4294967295u), 0i), false), Struct_2(-1i, Struct_1(i32(-2147483648), vec2<u32>(0u, 3954u), -1i), Struct_1(16266i, vec2<u32>(27303u, 1u), 1i), true), Struct_2(7863i, Struct_1(30885i, vec2<u32>(6453u, 4812u), 43870i), Struct_1(-34994i, vec2<u32>(1u, 9944u), 8976i), true), Struct_2(50321i, Struct_1(7752i, vec2<u32>(5056u, 74832u), i32(-2147483648)), Struct_1(-1i, vec2<u32>(16546u, 23746u), -27530i), false), Struct_2(i32(-2147483648), Struct_1(29380i, vec2<u32>(65404u, 43335u), 0i), Struct_1(10823i, vec2<u32>(50294u, 1u), i32(-2147483648)), true), Struct_2(0i, Struct_1(1i, vec2<u32>(91291u, 0u), 0i), Struct_1(1i, vec2<u32>(4294967295u, 1u), 1i), false), Struct_2(-1i, Struct_1(i32(-2147483648), vec2<u32>(57818u, 21032u), 2147483647i), Struct_1(48849i, vec2<u32>(1u, 13648u), -14959i), true), Struct_2(-29634i, Struct_1(63498i, vec2<u32>(0u, 27974u), -1i), Struct_1(1i, vec2<u32>(0u, 42552u), -41621i), true), Struct_2(9606i, Struct_1(-56954i, vec2<u32>(21286u, 80496u), -38088i), Struct_1(1i, vec2<u32>(70206u, 17181u), -2581i), true), Struct_2(i32(-2147483648), Struct_1(-57480i, vec2<u32>(1u, 1u), -36657i), Struct_1(0i, vec2<u32>(88887u, 4294967295u), 2147483647i), false), Struct_2(0i, Struct_1(-1i, vec2<u32>(1u, 27382u), 0i), Struct_1(0i, vec2<u32>(4294967295u, 26216u), 0i), false), Struct_2(2147483647i, Struct_1(-80732i, vec2<u32>(1u, 1126u), 24610i), Struct_1(28632i, vec2<u32>(4294967295u, 84286u), 18367i), false), Struct_2(-2120i, Struct_1(0i, vec2<u32>(51948u, 13578u), 18630i), Struct_1(-48813i, vec2<u32>(21997u, 46624u), -3926i), false), Struct_2(0i, Struct_1(-22105i, vec2<u32>(1u, 4294967295u), 2147483647i), Struct_1(1i, vec2<u32>(28230u, 22026u), 24733i), false), Struct_2(1i, Struct_1(37734i, vec2<u32>(6897u, 49870u), -26863i), Struct_1(61373i, vec2<u32>(4294967295u, 1u), -38110i), false), Struct_2(2147483647i, Struct_1(0i, vec2<u32>(0u, 1u), 20062i), Struct_1(-40785i, vec2<u32>(10545u, 0u), -47793i), true), Struct_2(1i, Struct_1(-1i, vec2<u32>(39402u, 1u), i32(-2147483648)), Struct_1(50312i, vec2<u32>(0u, 5935u), 0i), false));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    let var_0 = global1.c.c | u_input.d;
    let var_1 = true;
    var var_2 = vec4<i32>(-2147483647i | global1.c.a, 1i, var_0, ~global0[_wgslsmith_index_u32(~u_input.b.x, 14u)] & _wgslsmith_mod_i32(global1.b.c, -12540i));
    let var_3 = Struct_1(~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, u_input.b.x), 14u)], vec2<u32>(~(~26463u), ~46053u | _wgslsmith_div_u32(firstLeadingBit(u_input.c), global1.c.b.x)), -var_0);
    let var_4 = Struct_1(global1.c.c, global1.b.b, ~min(firstLeadingBit(global1.b.c), abs(global1.c.a)) >> ((_wgslsmith_mod_u32(0u << (0u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.b.x, 35267u, 98596u, global1.c.b.x), vec4<u32>(41441u, 4294967295u, 37363u, var_3.b.x))) & 4294967295u) % 32u));
    return ~8054u;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool) -> vec2<u32> {
    global1 = global2[_wgslsmith_index_u32(countOneBits(global1.b.b.x), 29u)];
    var var_0 = i32(-1i) * -1i;
    var var_1 = select(all(!(!vec3<bool>(true, global1.d, false))), all(vec3<bool>(-194f <= arg_0.x, false, arg_1)), arg_1);
    let var_2 = global1.c;
    var_0 = 29784i;
    return vec2<u32>(~0u, func_3(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(540f, arg_0.x, _wgslsmith_f_op_f32(-1000f + -669f))))));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: i32) -> vec3<bool> {
    return select(!vec3<bool>(false, _wgslsmith_clamp_u32(10310u, 75034u, 22842u) > firstTrailingBit(u_input.b.x), countOneBits(4294967295u) <= arg_1.c.b.x), vec3<bool>(global1.d && true, !(arg_2.x < 678f) | all(!vec4<bool>(true, false, arg_1.d, global1.d)), global1.d), vec3<bool>(!arg_1.d, true, global1.d));
}

fn func_1(arg_0: bool, arg_1: i32) -> i32 {
    let var_0 = select(func_4(firstTrailingBit(~global0[_wgslsmith_index_u32(1u, 14u)] | ~global1.a), Struct_2(-u_input.a.x, Struct_1(arg_1, func_2(vec3<f32>(-388f, 707f, -441f), arg_0), -17640i), global1.c, arg_0), vec4<f32>(_wgslsmith_f_op_f32(trunc(-2021f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(610f)) * 2063f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-248f)), -1275f), _wgslsmith_f_op_f32(f32(-1f) * -1377f)), ~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.d, u_input.d), vec3<i32>(arg_1, -57259i, global0[_wgslsmith_index_u32(u_input.c, 14u)])), _wgslsmith_mult_i32(arg_1, global0[_wgslsmith_index_u32(u_input.b.x, 14u)]))), func_4(reverseBits(global0[_wgslsmith_index_u32(~79180u, 14u)]), global2[_wgslsmith_index_u32(countOneBits(func_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-621f, -260f, 962f))), true).x), 29u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(-291f, _wgslsmith_f_op_f32(f32(-1f) * -967f), -557f, _wgslsmith_f_op_f32(f32(-1f) * -151f))), 21211i), global1.d);
    global2 = array<Struct_2, 29>();
    global2 = array<Struct_2, 29>();
    let var_1 = var_0.x;
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-911f * 760f), -530f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(997f, 1000f)), _wgslsmith_f_op_f32(1290f + 1000f), var_0.x || global1.d)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-252f, 800f) + -904f), _wgslsmith_f_op_f32(-558f * -1062f))), select(true, arg_0, true)))));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(select(_wgslsmith_dot_vec2_i32((u_input.a ^ vec2<i32>(1i, 1i)) ^ vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 14u)], -2147483647i), ~u_input.a), ~(8662i >> (~global1.c.b.x % 32u)), global1.d), Struct_1(global1.c.c, _wgslsmith_mult_vec2_u32(~u_input.b.yy, u_input.b.xz), func_1(any(!vec3<bool>(global1.d, global1.d, global1.d)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(0u), 0u), 14u)])), global1.b, false);
    var var_0 = global1.c;
    var var_1 = global2[_wgslsmith_index_u32(u_input.c, 29u)];
    var var_2 = global1.b;
    var var_3 = var_1.d;
    var_3 = global1.d;
    var_2 = Struct_1(25247i, var_0.b, global1.c.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(global1.b.b, ~_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.c.b.x, var_2.b.x), abs(u_input.b.xy)), ~(~vec2<u32>(var_0.b.x, var_2.b.x))), -vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a.x, var_2.c, 0i), ~vec3<i32>(global1.c.c, 2147483647i, global0[_wgslsmith_index_u32(1u, 14u)])), -2147483647i, firstLeadingBit(-2147483647i)));
}

