struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(vec3<i32>(1i, i32(-2147483648), 24699i), Struct_2(vec4<u32>(1u, 0u, 26497u, 1u), 1u, Struct_1(vec2<i32>(-17656i, -34850i), i32(-2147483648), -4166i, vec4<i32>(-1i, 0i, 11738i, -15881i))), Struct_2(vec4<u32>(32182u, 61720u, 36837u, 60261u), 0u, Struct_1(vec2<i32>(0i, 0i), i32(-2147483648), 1i, vec4<i32>(29140i, -24500i, -49624i, -24915i)))), Struct_3(vec3<i32>(-32899i, 0i, 13120i), Struct_2(vec4<u32>(0u, 1u, 69370u, 4294967295u), 38182u, Struct_1(vec2<i32>(11381i, 1i), 0i, 0i, vec4<i32>(i32(-2147483648), 1588i, 10635i, 1i))), Struct_2(vec4<u32>(4294967295u, 4294967295u, 78062u, 0u), 1u, Struct_1(vec2<i32>(-1i, 2147483647i), 46597i, i32(-2147483648), vec4<i32>(-16829i, 0i, -1i, 19743i)))), Struct_3(vec3<i32>(i32(-2147483648), -57804i, i32(-2147483648)), Struct_2(vec4<u32>(4294967295u, 4294967295u, 30111u, 70970u), 4294967295u, Struct_1(vec2<i32>(18229i, 1i), 2147483647i, -44582i, vec4<i32>(11478i, -12733i, 2071i, 1392i))), Struct_2(vec4<u32>(0u, 0u, 0u, 0u), 0u, Struct_1(vec2<i32>(33929i, i32(-2147483648)), 2147483647i, 5530i, vec4<i32>(43027i, 9378i, 0i, 2147483647i)))), Struct_3(vec3<i32>(31919i, i32(-2147483648), 22639i), Struct_2(vec4<u32>(4294967295u, 0u, 4294967295u, 0u), 0u, Struct_1(vec2<i32>(23361i, 31459i), -27848i, 12037i, vec4<i32>(30499i, 14966i, 23407i, 0i))), Struct_2(vec4<u32>(4294967295u, 4294967295u, 0u, 14301u), 462u, Struct_1(vec2<i32>(i32(-2147483648), -37176i), -1i, 46739i, vec4<i32>(17020i, 49307i, -1i, -62127i)))), Struct_3(vec3<i32>(i32(-2147483648), -2368i, 26167i), Struct_2(vec4<u32>(1u, 0u, 0u, 14774u), 0u, Struct_1(vec2<i32>(2147483647i, 2147483647i), 15276i, 1i, vec4<i32>(1i, -66571i, -26001i, i32(-2147483648)))), Struct_2(vec4<u32>(0u, 62228u, 4294967295u, 0u), 4294967295u, Struct_1(vec2<i32>(i32(-2147483648), 31905i), -1i, -1i, vec4<i32>(43604i, -5541i, 18945i, 58002i)))), Struct_3(vec3<i32>(31078i, -2686i, 0i), Struct_2(vec4<u32>(58187u, 0u, 0u, 0u), 27067u, Struct_1(vec2<i32>(0i, -1i), -94254i, 2147483647i, vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 68996i))), Struct_2(vec4<u32>(21234u, 6923u, 105643u, 20145u), 0u, Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), -43444i, 1i, vec4<i32>(-1i, 33529i, -12071i, 0i)))), Struct_3(vec3<i32>(66279i, 2147483647i, -3809i), Struct_2(vec4<u32>(0u, 4294967295u, 0u, 26748u), 1u, Struct_1(vec2<i32>(1i, 19390i), 0i, -6235i, vec4<i32>(-1i, 4161i, 6193i, 16318i))), Struct_2(vec4<u32>(0u, 0u, 4294967295u, 47086u), 4294967295u, Struct_1(vec2<i32>(i32(-2147483648), 1832i), 10162i, 31809i, vec4<i32>(-59549i, 25713i, 1i, 0i)))), Struct_3(vec3<i32>(0i, 25223i, 45503i), Struct_2(vec4<u32>(84282u, 4294967295u, 22665u, 0u), 0u, Struct_1(vec2<i32>(34072i, 61400i), -19498i, -26042i, vec4<i32>(-79158i, 9462i, -8535i, -45723i))), Struct_2(vec4<u32>(4427u, 4294967295u, 1u, 4294967295u), 0u, Struct_1(vec2<i32>(1i, -10305i), 1i, -1i, vec4<i32>(41739i, -36639i, 0i, 24715i)))), Struct_3(vec3<i32>(-1i, 1i, -47355i), Struct_2(vec4<u32>(43756u, 4294967295u, 0u, 82066u), 9701u, Struct_1(vec2<i32>(-11456i, -13263i), -1i, 13724i, vec4<i32>(-1i, 11090i, -1i, 33495i))), Struct_2(vec4<u32>(4211u, 61950u, 40997u, 0u), 21402u, Struct_1(vec2<i32>(-1i, 1i), -27324i, 1i, vec4<i32>(0i, 22076i, 2147483647i, -1i)))), Struct_3(vec3<i32>(21899i, 1i, -12882i), Struct_2(vec4<u32>(23325u, 52549u, 4294967295u, 61160u), 35189u, Struct_1(vec2<i32>(-1i, -46252i), -42964i, 0i, vec4<i32>(0i, 46754i, 5067i, 21557i))), Struct_2(vec4<u32>(98331u, 18805u, 1u, 1u), 1u, Struct_1(vec2<i32>(27514i, -14765i), 18037i, 0i, vec4<i32>(21949i, 0i, 57703i, i32(-2147483648))))), Struct_3(vec3<i32>(-6666i, -13592i, 34765i), Struct_2(vec4<u32>(47638u, 11946u, 33987u, 1u), 4294967295u, Struct_1(vec2<i32>(13397i, i32(-2147483648)), 16739i, -27982i, vec4<i32>(i32(-2147483648), 39754i, i32(-2147483648), 50550i))), Struct_2(vec4<u32>(0u, 24017u, 4294967295u, 1u), 15540u, Struct_1(vec2<i32>(i32(-2147483648), -72647i), -1i, 7699i, vec4<i32>(2147483647i, -1737i, 5633i, 1i)))), Struct_3(vec3<i32>(2147483647i, -15139i, 0i), Struct_2(vec4<u32>(1u, 0u, 4294967295u, 19082u), 20403u, Struct_1(vec2<i32>(-23945i, 1161i), 10406i, -56009i, vec4<i32>(0i, 53413i, -34949i, -15216i))), Struct_2(vec4<u32>(2954u, 45144u, 0u, 0u), 1u, Struct_1(vec2<i32>(1i, 1i), 1i, 1i, vec4<i32>(i32(-2147483648), 39317i, -11039i, 2671i)))), Struct_3(vec3<i32>(0i, -1i, 33883i), Struct_2(vec4<u32>(1u, 4294967295u, 4294967295u, 15618u), 23152u, Struct_1(vec2<i32>(36766i, 34580i), i32(-2147483648), 56989i, vec4<i32>(1i, 2147483647i, 1i, 1i))), Struct_2(vec4<u32>(32921u, 4294967295u, 1u, 70604u), 0u, Struct_1(vec2<i32>(2147483647i, -28688i), 17225i, 14769i, vec4<i32>(-20308i, 2147483647i, 2147483647i, 0i)))), Struct_3(vec3<i32>(-21385i, 56380i, 14702i), Struct_2(vec4<u32>(0u, 16598u, 75091u, 0u), 52158u, Struct_1(vec2<i32>(-1i, 59712i), -1i, 1i, vec4<i32>(1i, 2147483647i, 0i, 2147483647i))), Struct_2(vec4<u32>(19190u, 46864u, 0u, 4294967295u), 80931u, Struct_1(vec2<i32>(i32(-2147483648), 0i), -47586i, -1i, vec4<i32>(2147483647i, 30499i, 2147483647i, -10780i)))), Struct_3(vec3<i32>(-1i, 39691i, -1i), Struct_2(vec4<u32>(4294967295u, 0u, 34180u, 0u), 0u, Struct_1(vec2<i32>(1i, i32(-2147483648)), -13545i, 0i, vec4<i32>(0i, -6645i, 21828i, 2575i))), Struct_2(vec4<u32>(1u, 1u, 4294967295u, 1u), 18567u, Struct_1(vec2<i32>(-1i, -1i), -48937i, -39649i, vec4<i32>(0i, i32(-2147483648), -35536i, 36917i)))), Struct_3(vec3<i32>(66595i, 15262i, 37137i), Struct_2(vec4<u32>(0u, 16995u, 0u, 4294967295u), 20541u, Struct_1(vec2<i32>(-9196i, -33945i), 2147483647i, -11888i, vec4<i32>(11974i, -1i, -41760i, -11851i))), Struct_2(vec4<u32>(57385u, 112650u, 59934u, 4294967295u), 1u, Struct_1(vec2<i32>(-55065i, 2147483647i), -8855i, 46141i, vec4<i32>(1i, -66060i, i32(-2147483648), 0i)))), Struct_3(vec3<i32>(-23559i, -13266i, -38481i), Struct_2(vec4<u32>(4294967295u, 4294967295u, 72667u, 14006u), 2759u, Struct_1(vec2<i32>(0i, 0i), -1i, i32(-2147483648), vec4<i32>(39985i, i32(-2147483648), 1i, 0i))), Struct_2(vec4<u32>(91755u, 1u, 1u, 0u), 4294967295u, Struct_1(vec2<i32>(-34258i, 44496i), 52798i, 17049i, vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, -41101i)))), Struct_3(vec3<i32>(45771i, 9278i, 2147483647i), Struct_2(vec4<u32>(28507u, 112930u, 4294967295u, 4294967295u), 4294967295u, Struct_1(vec2<i32>(0i, 13000i), i32(-2147483648), -26853i, vec4<i32>(-6941i, 2147483647i, 0i, -6712i))), Struct_2(vec4<u32>(23337u, 4294967295u, 20090u, 4294967295u), 0u, Struct_1(vec2<i32>(696i, i32(-2147483648)), -26916i, 0i, vec4<i32>(30976i, 11556i, 2147483647i, -51204i)))), Struct_3(vec3<i32>(8378i, 0i, 1i), Struct_2(vec4<u32>(1u, 1u, 37341u, 7809u), 35388u, Struct_1(vec2<i32>(i32(-2147483648), 0i), -1i, -24956i, vec4<i32>(1i, 2147483647i, 0i, 2147483647i))), Struct_2(vec4<u32>(0u, 4294967295u, 18931u, 1u), 37260u, Struct_1(vec2<i32>(55395i, 0i), 0i, 1i, vec4<i32>(0i, 68553i, 23296i, -1i)))), Struct_3(vec3<i32>(i32(-2147483648), 0i, -377i), Struct_2(vec4<u32>(48798u, 73334u, 2101u, 113990u), 36228u, Struct_1(vec2<i32>(-28696i, 0i), 1i, 33014i, vec4<i32>(-33134i, 0i, 61532i, -1i))), Struct_2(vec4<u32>(0u, 1u, 0u, 51740u), 61911u, Struct_1(vec2<i32>(-2243i, -15195i), -52877i, 2147483647i, vec4<i32>(21460i, 1i, 1i, 1i)))), Struct_3(vec3<i32>(-1i, 34030i, 10077i), Struct_2(vec4<u32>(27960u, 79053u, 0u, 1529u), 1u, Struct_1(vec2<i32>(-1i, 0i), 14601i, 23294i, vec4<i32>(-1i, 0i, -21365i, -90757i))), Struct_2(vec4<u32>(32460u, 0u, 0u, 4294967295u), 7618u, Struct_1(vec2<i32>(-25821i, -12693i), 0i, 5238i, vec4<i32>(0i, 14458i, 0i, 26679i)))), Struct_3(vec3<i32>(-2398i, 1i, 0i), Struct_2(vec4<u32>(10052u, 1u, 10438u, 1u), 18579u, Struct_1(vec2<i32>(2147483647i, 15455i), 5121i, i32(-2147483648), vec4<i32>(22351i, 2147483647i, 0i, 22178i))), Struct_2(vec4<u32>(4294967295u, 1u, 1u, 4294967295u), 1u, Struct_1(vec2<i32>(22062i, -16702i), -3099i, -42771i, vec4<i32>(16072i, -19508i, 24840i, -27218i)))));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_5, arg_3: Struct_5) -> bool {
    global0 = array<Struct_3, 22>();
    global0 = array<Struct_3, 22>();
    var var_0 = vec4<bool>(true, arg_1.x, arg_1.x || select(!arg_1.x, all(arg_1), true), !arg_1.x);
    let var_1 = u_input.d.x;
    var_0 = !(!(!(!(!vec4<bool>(false, true, arg_1.x, true)))));
    return !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(125f, -1598f, var_0.x)) * 906f) + _wgslsmith_div_f32(1113f, _wgslsmith_f_op_f32(604f - 1009f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-308f, -2264f))));
}

fn func_2() -> i32 {
    let var_0 = firstLeadingBit(reverseBits(vec4<u32>(_wgslsmith_sub_u32(1u, u_input.a.x), u_input.a.x | 26327u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u), vec2<u32>(u_input.b.x, u_input.a.x)), ~4294967295u)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(abs(44963u), u_input.b.x, u_input.a.x, ~1u), ~vec4<u32>(21492u, u_input.b.x, 4294967295u, 0u)));
    var var_1 = any(vec3<bool>(!func_3(Struct_2(var_0, 1u, Struct_1(vec2<i32>(u_input.d.x, -1i), 46793i, u_input.d.x, u_input.d)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), Struct_5(28058u, u_input.d.x, var_0.x), Struct_5(var_0.x, u_input.d.x, 7983u)), any(select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true))), false));
    var var_2 = true | any(!vec4<bool>(true, true, any(vec2<bool>(false, false)), true));
    var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1672f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-243f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(355f + -178f), _wgslsmith_f_op_f32(select(1355f, 659f, false))))), true))));
    return u_input.d.x;
}

fn func_1() -> StorageBuffer {
    var var_0 = func_2();
    let var_1 = vec4<u32>(209u, abs(~(~firstTrailingBit(u_input.b.x))), ~0u, _wgslsmith_dot_vec2_u32(min(~(vec2<u32>(4294967295u, u_input.b.x) & vec2<u32>(u_input.a.x, 1u)), u_input.b.zy), min(vec2<u32>(43138u, u_input.b.x ^ 4294967295u), u_input.a.zy)));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1320f, 504f, 119f, 1465f))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(179f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-212f, 993f, false)) * _wgslsmith_div_f32(1530f, -1308f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1174f))), _wgslsmith_f_op_f32(-355f - -1262f)))));
    var_0 = abs(abs(i32(-1i) * -u_input.c.x));
    var var_3 = ~u_input.a.x | _wgslsmith_dot_vec4_u32(vec4<u32>(~(~var_1.x), 0u, ~abs(1u), 0u), _wgslsmith_mod_vec4_u32(~vec4<u32>(var_1.x, u_input.b.x, u_input.a.x, 1u), ~(~var_1)));
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) + _wgslsmith_f_op_f32(397f + _wgslsmith_div_f32(var_2.x, -844f)))), vec3<f32>(var_2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.x * -306f))), 1f)), 632f), vec4<i32>(~min(_wgslsmith_div_i32(u_input.d.x, 40200i), u_input.c.x), ~(-u_input.d.x), i32(-1i) * -86317i, u_input.c.x), ~u_input.d, vec2<u32>(~u_input.a.x, _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(var_1.x, 4294967295u, 13114u)), ~20759u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    global0 = array<Struct_3, 22>();
    let var_1 = 2593f;
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-443f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - var_1) * var_1) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(243f * 1026f))))));
    global0 = array<Struct_3, 22>();
    let x = u_input.a;
    s_output = func_1();
}

