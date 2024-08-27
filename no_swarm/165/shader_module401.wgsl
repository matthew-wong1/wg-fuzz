struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(0i, -5477i, -40616i), vec3<i32>(0i, -32630i, -13371i), vec3<i32>(0i, 2147483647i, i32(-2147483648)), vec3<i32>(1i, -1i, i32(-2147483648)), vec3<i32>(14417i, 55450i, -43652i), vec3<i32>(i32(-2147483648), 1i, 1i), vec3<i32>(2147483647i, -36184i, 0i), vec3<i32>(82859i, 2147483647i, 0i), vec3<i32>(6732i, -5327i, 0i), vec3<i32>(-904i, 1i, -34223i), vec3<i32>(-5155i, 2147483647i, -1i), vec3<i32>(-9526i, -1i, 62277i), vec3<i32>(i32(-2147483648), -41847i, i32(-2147483648)), vec3<i32>(45711i, 2147483647i, 17835i));

var<private> global2: array<bool, 29>;

var<private> global3: vec4<u32> = vec4<u32>(36179u, 1u, 4294967295u, 51118u);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> Struct_1 {
    let var_0 = select(vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.c), _wgslsmith_clamp_vec2_u32(u_input.b.xy, vec2<u32>(u_input.c, u_input.c), u_input.b.yx) << (min(vec2<u32>(u_input.a, 0u), global3.ww) % vec2<u32>(32u))), 29u)], !global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3.x, 24758u), 29u)] | (u_input.b.x > ~global3.x)), !(!vec2<bool>(global2[_wgslsmith_index_u32(abs(1u), 29u)], global2[_wgslsmith_index_u32(23370u, 29u)])), !all(select(!vec2<bool>(global2[_wgslsmith_index_u32(global3.x, 29u)], global2[_wgslsmith_index_u32(global3.x, 29u)]), select(vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 29u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(6165u, 29u)]), global2[_wgslsmith_index_u32(u_input.c, 29u)]), vec2<bool>(true, true))));
    global1 = array<vec3<i32>, 14>();
    var var_1 = select(!(!vec4<bool>(true, true, any(vec4<bool>(var_0.x, global2[_wgslsmith_index_u32(4294967295u, 29u)], var_0.x, false)), false)), !(!select(!vec4<bool>(true, false, var_0.x, global2[_wgslsmith_index_u32(25189u, 29u)]), !vec4<bool>(var_0.x, var_0.x, var_0.x, global2[_wgslsmith_index_u32(u_input.b.x, 29u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(17332u, 29u)], var_0.x, global2[_wgslsmith_index_u32(6181u, 29u)]))), select(select(!vec4<bool>(false, var_0.x, true, false), select(!vec4<bool>(var_0.x, true, false, true), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 29u)], var_0.x, true, global2[_wgslsmith_index_u32(u_input.c, 29u)]), global2[_wgslsmith_index_u32(global3.x, 29u)]), select(vec4<bool>(false, true, false, var_0.x), !vec4<bool>(true, var_0.x, true, global2[_wgslsmith_index_u32(u_input.b.x, 29u)]), true)), vec4<bool>(true, true, true, true), vec4<bool>(!var_0.x | true, true, true, false)));
    global1 = array<vec3<i32>, 14>();
    var var_2 = ~vec2<i32>(1i, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-14277i, -29117i, 1i, -29306i), vec4<i32>(13408i, -22844i, 1i, -1i), vec4<i32>(10141i, -1i, 2147483647i, 60330i)))));
    return Struct_1(-1755f, (~min(vec3<u32>(u_input.b.x, global3.x, 4294967295u), u_input.b) >> (~global3.zww % vec3<u32>(32u))) ^ u_input.b);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3) -> vec2<bool> {
    let var_0 = (_wgslsmith_sub_u32(arg_0.b.x, 0u) ^ u_input.a) << (36675u % 32u);
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_f32(arg_2.a.x, -1000f), ~reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 60721u, global3.x), global3.wzy))), vec2<bool>(!any(vec4<bool>(true, false, global2[_wgslsmith_index_u32(global3.x, 29u)], true)) & global2[_wgslsmith_index_u32(min(arg_0.b.x ^ 4294967295u, var_0), 29u)], all(vec2<bool>(true, global2[_wgslsmith_index_u32(var_0, 29u)]))), abs(global3.yzy) & ~countOneBits(vec3<u32>(u_input.c, 4294967295u, global3.x)), arg_0, Struct_1(_wgslsmith_f_op_f32(-func_2().a), global3.zxy));
    global2 = array<bool, 29>();
    var_1 = Struct_2(arg_0, vec2<bool>(true, true), vec3<u32>(~min(~22961u, _wgslsmith_clamp_u32(2563u, 0u, arg_0.b.x)), _wgslsmith_mult_u32(0u, ~var_1.c.x) >> (firstTrailingBit(abs(global3.x)) % 32u), 1u << (0u % 32u)), var_1.e, arg_0);
    let var_2 = ~firstLeadingBit(vec4<i32>(57285i, reverseBits(-15611i), reverseBits(firstLeadingBit(2147483647i)), _wgslsmith_mult_i32(~(-1i), 1i)));
    return select(select(var_1.b, var_1.b, select(vec2<bool>(true, true & var_1.b.x), var_1.b, !all(vec4<bool>(true, false, true, false)))), !vec2<bool>(true, select(global2[_wgslsmith_index_u32(global3.x, 29u)], true && var_1.b.x, any(vec3<bool>(global2[_wgslsmith_index_u32(32124u, 29u)], var_1.b.x, false)))), (any(vec3<bool>(true, var_1.b.x, var_1.b.x)) && true) | global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0, 30525u), 29u)]);
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_3) -> vec2<f32> {
    var var_0 = Struct_2(func_2(), !select(!(!vec2<bool>(global2[_wgslsmith_index_u32(arg_0.x, 29u)], true)), func_3(Struct_1(403f, arg_0.yxy), _wgslsmith_f_op_f32(arg_2.a.x * 1000f), Struct_3(arg_2.a)), all(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 29u)], global2[_wgslsmith_index_u32(global3.x, 29u)], global2[_wgslsmith_index_u32(global3.x, 29u)], global2[_wgslsmith_index_u32(0u, 29u)]))), arg_0.xyz, Struct_1(arg_2.a.x, abs(_wgslsmith_sub_vec3_u32(arg_0.ywz, ~global3.yyx))), func_2());
    var var_1 = global1[_wgslsmith_index_u32(18731u, 14u)];
    let var_2 = _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(~(vec4<i32>(arg_1, 261i, -5349i, -15156i) & vec4<i32>(var_1.x, arg_1, 0i, 9067i)), -(~vec4<i32>(arg_1, -1i, arg_1, var_1.x))), countOneBits(vec4<i32>(1i, var_1.x, 0i, var_1.x) & reverseBits(vec4<i32>(2147483647i, 3616i, arg_1, 1i))), countOneBits(-vec4<i32>(var_1.x, 14776i, var_1.x, arg_1) | (vec4<i32>(var_1.x, 46083i, -2147483647i, var_1.x) & vec4<i32>(arg_1, 28594i, 0i, var_1.x)))), vec4<i32>(1i, var_1.x, abs(var_1.x & var_1.x) << (~min(40123u, 1u) % 32u), -2133i));
    let var_3 = func_2();
    global2 = array<bool, 29>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_2.a - vec2<f32>(arg_2.a.x, arg_2.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.x, -704f))))))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.a) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.x, -554f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1249f + 523f), _wgslsmith_f_op_f32(sign(-1000f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(_wgslsmith_mod_u32(~(~(global3.x & 0u)), 48142u << ((~u_input.c & (global3.x | 15831u)) % 32u)), ~41229u);
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-557f, -1396f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(vec4<u32>(u_input.c, 53343u, 0u, 0u), -1i, Struct_3(vec2<f32>(-1083f, 1599f))))))));
    global2 = array<bool, 29>();
    let var_2 = firstTrailingBit(-3856i);
    var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(var_1.a - _wgslsmith_f_op_vec2_f32(var_1.a * vec2<f32>(_wgslsmith_f_op_f32(-2503f * var_1.a.x), 1767f))));
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a + vec2<f32>(-172f, var_1.a.x)) + _wgslsmith_div_vec2_f32(var_1.a, var_1.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, var_1.a.x))) * var_1.a));
    var var_4 = var_1.a.x;
    global0 = ~(-19644i);
    let var_5 = Struct_2(Struct_1(-226f, ~_wgslsmith_mult_vec3_u32(u_input.b & vec3<u32>(51752u, u_input.b.x, u_input.c), vec3<u32>(global3.x, global3.x, u_input.c))), !select(vec2<bool>(select(true, global2[_wgslsmith_index_u32(12130u, 29u)], global2[_wgslsmith_index_u32(global3.x, 29u)]), global2[_wgslsmith_index_u32(1u, 29u)] | global2[_wgslsmith_index_u32(u_input.a, 29u)]), vec2<bool>(true && global2[_wgslsmith_index_u32(global3.x, 29u)], true), all(select(vec3<bool>(global2[_wgslsmith_index_u32(1790u, 29u)], global2[_wgslsmith_index_u32(44968u, 29u)], false), vec3<bool>(global2[_wgslsmith_index_u32(global3.x, 29u)], global2[_wgslsmith_index_u32(20182u, 29u)], false), vec3<bool>(global2[_wgslsmith_index_u32(1u, 29u)], global2[_wgslsmith_index_u32(u_input.c, 29u)], global2[_wgslsmith_index_u32(global3.x, 29u)])))), ~global3.xxx, Struct_1(-452f, global3.xyy), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.d.a)), _wgslsmith_f_op_f32(round(506f)), var_1.a.x);
}

