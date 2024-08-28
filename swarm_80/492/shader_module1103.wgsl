struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 27> = array<vec4<i32>, 27>(vec4<i32>(1i, i32(-2147483648), 2147483647i, 858i), vec4<i32>(-31853i, -20646i, 17024i, 6381i), vec4<i32>(1i, i32(-2147483648), 0i, 2147483647i), vec4<i32>(3314i, -1i, 12491i, -1i), vec4<i32>(2147483647i, 18587i, 59032i, 2147483647i), vec4<i32>(31888i, -16800i, 60362i, -33079i), vec4<i32>(-35765i, 42914i, -23012i, -12865i), vec4<i32>(-11106i, i32(-2147483648), -1i, -1i), vec4<i32>(-1i, -1i, 0i, -1i), vec4<i32>(7471i, -54221i, 15471i, -58669i), vec4<i32>(7432i, 18625i, 47285i, i32(-2147483648)), vec4<i32>(-5630i, 31043i, i32(-2147483648), 17191i), vec4<i32>(2147483647i, -1i, 2147483647i, i32(-2147483648)), vec4<i32>(-1i, -5752i, 28571i, 2147483647i), vec4<i32>(i32(-2147483648), 0i, -9563i, -9862i), vec4<i32>(-1i, 0i, 1i, 15236i), vec4<i32>(7733i, 1i, 12313i, -31753i), vec4<i32>(-24556i, 5312i, 0i, -2599i), vec4<i32>(2147483647i, -1i, 20233i, -1i), vec4<i32>(2147483647i, -1i, 49263i, 4506i), vec4<i32>(-1i, 2147483647i, 25044i, 0i), vec4<i32>(46179i, 1i, 1i, -41627i), vec4<i32>(-8853i, 11984i, -16781i, 1i), vec4<i32>(i32(-2147483648), 1i, 0i, 38148i), vec4<i32>(2147483647i, 2147483647i, -22452i, 1i), vec4<i32>(-1i, 39208i, -26476i, 13754i), vec4<i32>(i32(-2147483648), 30866i, -1037i, 14751i));

var<private> global1: array<vec4<f32>, 19> = array<vec4<f32>, 19>(vec4<f32>(355f, 1448f, -1533f, -1351f), vec4<f32>(-1000f, 662f, 378f, 860f), vec4<f32>(-179f, -499f, -1516f, -1027f), vec4<f32>(-1410f, -524f, -666f, -1585f), vec4<f32>(-355f, -566f, 568f, 113f), vec4<f32>(-1000f, 616f, -706f, -1606f), vec4<f32>(-1789f, -885f, 761f, -1222f), vec4<f32>(-943f, -203f, 599f, 1629f), vec4<f32>(339f, -1081f, 283f, -1501f), vec4<f32>(-797f, -615f, 148f, -621f), vec4<f32>(-383f, 506f, -1804f, 1000f), vec4<f32>(-494f, -611f, 536f, 1859f), vec4<f32>(-554f, -1000f, -222f, 471f), vec4<f32>(374f, -1050f, 738f, 559f), vec4<f32>(-478f, -446f, 1234f, -397f), vec4<f32>(-268f, 1129f, 644f, 1674f), vec4<f32>(1000f, 158f, -1330f, -349f), vec4<f32>(-1140f, -737f, 1635f, -1238f), vec4<f32>(198f, 1872f, -587f, -239f));

var<private> global2: Struct_1;

var<private> global3: u32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32) -> vec3<bool> {
    let var_0 = 7032u;
    var var_1 = 1042f;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(535f, -1000f, false)), 1000f, _wgslsmith_f_op_f32(select(global2.a, global2.b.x, false)), -250f), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 100075u, 22463u), u_input.a), min(arg_0, 46225u)), 19u)]), global2.d)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1469f, global2.b.x, global2.b.x, -869f) - global2.d))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(9242u, 19u)], vec4<f32>(-745f, global2.a, global2.d.x, 791f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(893f, -311f, global2.b.x, 568f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, 762f, global2.a, global2.d.x)), true))))));
    let var_3 = Struct_1(639f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, var_2.x, global2.d.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_2.x, var_2.x) + vec3<f32>(var_2.x, -576f, global2.d.x))) * _wgslsmith_f_op_vec3_f32(var_2.zxx - _wgslsmith_f_op_vec3_f32(global2.b * var_2.xwx))), vec3<f32>(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-272f - global2.a))), var_2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(350f)), _wgslsmith_f_op_f32(f32(-1f) * -787f))))), global2.c, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1243f, -152f, global2.d.x, 1000f)) * global1[_wgslsmith_index_u32(~0u, 19u)])))));
    let var_4 = i32(-1i) * -14333i;
    return select(!select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(false, false)), true), false), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), any(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true)))), !any(vec4<bool>(false, false, true, true))));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: u32) -> bool {
    global0 = array<vec4<i32>, 27>();
    let var_0 = select(true, false & (true && (arg_2.x < 34456i)), !any(func_3(arg_3))) & false;
    return any(func_3(~(~4294967295u) | min(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), 4294967295u)));
}

fn func_4(arg_0: vec3<bool>) -> Struct_1 {
    global1 = array<vec4<f32>, 19>();
    var var_0 = Struct_2(-388f, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_div_f32(global2.d.x, 589f))), _wgslsmith_f_op_f32(-1f)), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(global2.c, 2147483647i)), countOneBits(vec2<i32>(global2.c, global2.c))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(firstLeadingBit(39811u), 19u)])))), Struct_1(179f, _wgslsmith_f_op_vec3_f32(-global2.d.yxx), global2.c, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(global2.b.x * 1535f), global2.a, _wgslsmith_div_f32(global2.b.x, 641f), _wgslsmith_f_op_f32(-global2.d.x))))));
    var var_1 = vec2<bool>(!(-1173f <= _wgslsmith_f_op_f32(var_0.b.a - _wgslsmith_f_op_f32(min(-100f, global2.d.x)))), arg_0.x);
    var_1 = select(!select(select(vec2<bool>(true, true), !arg_0.zz, arg_0.yz), func_3(select(u_input.a.x, u_input.a.x, true)).xx, arg_0.xy), arg_0.xx, !vec2<bool>(all(vec3<bool>(var_1.x, arg_0.x, var_1.x)), var_1.x));
    let var_2 = _wgslsmith_div_u32(4294967295u << (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, 16602u) & u_input.a, vec3<u32>(u_input.a.x, 6978u, u_input.a.x)), ~(~u_input.a.x)) % 32u), u_input.a.x);
    return var_0.c;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<i32>) -> f32 {
    global3 = ~u_input.a.x;
    var var_0 = Struct_1(-640f, _wgslsmith_f_op_vec3_f32(trunc(global2.d.xzx)), -_wgslsmith_add_i32(2147483647i, global2.c), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-global2.a), global2.d.x, global2.a, -957f))))));
    global1 = array<vec4<f32>, 19>();
    global1 = array<vec4<f32>, 19>();
    var_0 = func_4(!vec3<bool>(_wgslsmith_f_op_f32(sign(global2.d.x)) <= _wgslsmith_f_op_f32(1000f * -1939f), func_2(global2.d.x, Struct_2(global2.d.x, Struct_1(var_0.d.x, var_0.d.zxy, global2.c, global1[_wgslsmith_index_u32(4294967295u, 19u)]), Struct_1(-2064f, vec3<f32>(global2.d.x, 1953f, -188f), -2147483647i, global2.d)), arg_1 ^ global0[_wgslsmith_index_u32(arg_0.x, 27u)], _wgslsmith_mult_u32(32135u, 1609u)), true));
    return _wgslsmith_f_op_f32(-global2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global2.b.x, Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(881f, _wgslsmith_f_op_f32(floor(global2.a)))))), _wgslsmith_div_vec3_f32(global2.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global2.b, global2.d.zwz)))), 1i, global1[_wgslsmith_index_u32(1u, 19u)]), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<u32>(4294967295u, 20156u, u_input.a.x, 0u), reverseBits(global0[_wgslsmith_index_u32(74999u, 27u)]))) * global2.a), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(global2.d.yxx - vec3<f32>(global2.b.x, global2.a, global2.a)), _wgslsmith_f_op_vec3_f32(round(global2.b)))), vec3<f32>(_wgslsmith_f_op_f32(-global2.d.x), global2.d.x, func_4(vec3<bool>(true, true, true)).d.x), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false))), global2.c & (~8466i >> ((1u << (u_input.a.x % 32u)) % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2104f, 2180f, global2.d.x, global2.d.x))))));
    let var_1 = global2.c;
    global2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -148f), vec3<f32>(232f, var_0.c.b.x, global2.a), -2147483647i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(u_input.a.x, 19u)] - global1[_wgslsmith_index_u32(u_input.a.x, 19u)]) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(1657f)), -131f, global2.b.x, -1292f), vec4<f32>(_wgslsmith_f_op_f32(-global2.a), global2.d.x, var_0.a, -1098f), any(vec4<bool>(true, true, true, true))))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1190f, 1137f)), var_0.a))) - -655f), var_0.b, Struct_1(262f, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-474f, global2.b.x, -482f), vec3<f32>(-102f, global2.d.x, 1646f))), var_0.b.b, vec3<bool>(true, true, true))), min(global2.c, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.c, -41218i, global2.c, -1893i), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.b.c, -5799i, 7664i, global2.c), global0[_wgslsmith_index_u32(u_input.a.x, 27u)]))), _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(~min(u_input.a.x, 33634u), 19u)])));
    global3 = ~(~(u_input.a.x << (16055u % 32u)));
    let var_3 = _wgslsmith_mult_u32(4294967295u, u_input.a.x) & countOneBits(1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.c.d.x, 966f)) * var_0.b.d.x), _wgslsmith_f_op_f32(-var_2.a))), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(var_3, var_3, 33632u, 0u), vec4<u32>(79801u, 1u, 1u, 9472u), false), reverseBits(vec4<u32>(u_input.a.x, 0u, 1u, var_3))), 1u, ~(25877u & var_3), countOneBits(abs(0u))), vec4<u32>(u_input.a.x, u_input.a.x, ~48737u | (u_input.a.x << (var_3 % 32u)), countOneBits(~u_input.a.x))), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.b.c, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, var_2.c.c), vec2<i32>(var_2.b.c, 2147483647i)), max(vec2<i32>(global2.c, 2147483647i), vec2<i32>(58399i, var_2.c.c))), _wgslsmith_mod_i32(global2.c << (15917u % 32u), 1i), global2.c), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.c.c, var_2.b.c, global2.c, var_0.b.c), select(global0[_wgslsmith_index_u32(46696u, 27u)], global0[_wgslsmith_index_u32(33121u, 27u)], true)) & (global0[_wgslsmith_index_u32(firstLeadingBit(5565u), 27u)] >> (_wgslsmith_mult_vec4_u32(vec4<u32>(42383u, var_3, 0u, 59418u), vec4<u32>(u_input.a.x, var_3, 1u, 18335u)) % vec4<u32>(32u)))), var_0.c.c, vec3<u32>(~select(abs(u_input.a.x), abs(var_3), u_input.a.x >= u_input.a.x), ~(~119340u), ~var_3));
}

