struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec4<bool>,
    d: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
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

var<private> global0: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(vec2<i32>(24322i, 10981i), Struct_2(Struct_1(true, vec4<u32>(31569u, 29689u, 4209u, 4294967295u), vec3<i32>(-40062i, 2147483647i, -1i), vec3<i32>(i32(-2147483648), 53497i, -1i)), false, vec4<bool>(true, false, true, true), Struct_1(false, vec4<u32>(1u, 21204u, 1u, 1u), vec3<i32>(14264i, 8140i, 2147483647i), vec3<i32>(1i, 28427i, -5612i)), Struct_1(true, vec4<u32>(64u, 1u, 1u, 0u), vec3<i32>(0i, -19614i, -11520i), vec3<i32>(79131i, 1i, 32649i))), vec4<bool>(false, true, true, false), 49303u), Struct_3(vec2<i32>(i32(-2147483648), 0i), Struct_2(Struct_1(false, vec4<u32>(4294967295u, 35433u, 42334u, 26160u), vec3<i32>(3861i, 2147483647i, i32(-2147483648)), vec3<i32>(-1i, 1i, -1i)), true, vec4<bool>(false, true, false, false), Struct_1(false, vec4<u32>(26129u, 3340u, 111859u, 4294967295u), vec3<i32>(2147483647i, 1i, -33271i), vec3<i32>(12100i, i32(-2147483648), 57839i)), Struct_1(false, vec4<u32>(0u, 0u, 11886u, 1u), vec3<i32>(-6547i, i32(-2147483648), -48758i), vec3<i32>(-1i, i32(-2147483648), 2147483647i))), vec4<bool>(false, true, false, true), 0u), Struct_3(vec2<i32>(37560i, i32(-2147483648)), Struct_2(Struct_1(true, vec4<u32>(1u, 67757u, 48656u, 0u), vec3<i32>(0i, 1i, 2147483647i), vec3<i32>(-1i, 67862i, 44439i)), true, vec4<bool>(true, false, false, false), Struct_1(true, vec4<u32>(0u, 1u, 24837u, 0u), vec3<i32>(30084i, 81905i, 40019i), vec3<i32>(i32(-2147483648), 25779i, 2147483647i)), Struct_1(false, vec4<u32>(1u, 9037u, 1u, 1u), vec3<i32>(-4796i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-32883i, -1i, 4413i))), vec4<bool>(true, true, true, true), 86454u), Struct_3(vec2<i32>(-37504i, 0i), Struct_2(Struct_1(false, vec4<u32>(19235u, 0u, 4294967295u, 2334u), vec3<i32>(2147483647i, 5309i, 2147483647i), vec3<i32>(10994i, -5941i, 2147483647i)), false, vec4<bool>(true, true, true, true), Struct_1(true, vec4<u32>(89055u, 1u, 0u, 0u), vec3<i32>(-38330i, -1i, -1i), vec3<i32>(12679i, 2147483647i, -62925i)), Struct_1(true, vec4<u32>(4294967295u, 11234u, 4294967295u, 51468u), vec3<i32>(-1i, i32(-2147483648), 2147483647i), vec3<i32>(36859i, 9546i, i32(-2147483648)))), vec4<bool>(false, true, true, false), 4294967295u), Struct_3(vec2<i32>(2147483647i, -1i), Struct_2(Struct_1(true, vec4<u32>(0u, 0u, 0u, 29356u), vec3<i32>(0i, -610i, 2147483647i), vec3<i32>(1i, 48646i, -20996i)), true, vec4<bool>(false, false, false, true), Struct_1(true, vec4<u32>(49054u, 1u, 4294967295u, 51559u), vec3<i32>(-138i, 0i, -1i), vec3<i32>(i32(-2147483648), 0i, -45374i)), Struct_1(true, vec4<u32>(56841u, 0u, 21062u, 84847u), vec3<i32>(0i, 1i, -22769i), vec3<i32>(i32(-2147483648), -1i, 1i))), vec4<bool>(true, true, false, true), 0u), Struct_3(vec2<i32>(47157i, -1i), Struct_2(Struct_1(false, vec4<u32>(28097u, 36858u, 12920u, 54303u), vec3<i32>(42470i, 2147483647i, i32(-2147483648)), vec3<i32>(29775i, 1i, 13279i)), false, vec4<bool>(true, false, true, true), Struct_1(true, vec4<u32>(4294967295u, 0u, 0u, 4294967295u), vec3<i32>(5624i, i32(-2147483648), -1i), vec3<i32>(53311i, i32(-2147483648), 35608i)), Struct_1(false, vec4<u32>(36938u, 54536u, 4294967295u, 1u), vec3<i32>(1i, 22913i, -1i), vec3<i32>(1i, 4832i, 2147483647i))), vec4<bool>(false, false, true, true), 59505u), Struct_3(vec2<i32>(45247i, 2147483647i), Struct_2(Struct_1(true, vec4<u32>(4294967295u, 1u, 85453u, 1u), vec3<i32>(-1i, 5760i, -4525i), vec3<i32>(-1i, i32(-2147483648), 0i)), true, vec4<bool>(true, true, false, true), Struct_1(false, vec4<u32>(1u, 4294967295u, 48001u, 4294967295u), vec3<i32>(1i, -14882i, 2147483647i), vec3<i32>(i32(-2147483648), i32(-2147483648), -5076i)), Struct_1(true, vec4<u32>(4294967295u, 0u, 32788u, 29641u), vec3<i32>(-1i, i32(-2147483648), 30857i), vec3<i32>(2147483647i, -41754i, 2147483647i))), vec4<bool>(false, false, true, false), 2025u), Struct_3(vec2<i32>(-12269i, 21512i), Struct_2(Struct_1(false, vec4<u32>(24u, 49947u, 4294967295u, 93881u), vec3<i32>(-1i, i32(-2147483648), 18303i), vec3<i32>(0i, 0i, -53728i)), true, vec4<bool>(false, false, false, true), Struct_1(true, vec4<u32>(13337u, 52815u, 0u, 41731u), vec3<i32>(i32(-2147483648), -57437i, 39009i), vec3<i32>(2147483647i, 11628i, -1i)), Struct_1(false, vec4<u32>(10642u, 8740u, 4294967295u, 5645u), vec3<i32>(0i, i32(-2147483648), -25535i), vec3<i32>(1i, -9870i, -52267i))), vec4<bool>(true, false, true, true), 0u), Struct_3(vec2<i32>(-7930i, -1i), Struct_2(Struct_1(false, vec4<u32>(15240u, 79448u, 1u, 47227u), vec3<i32>(1i, -1i, -9394i), vec3<i32>(1i, -23902i, -40200i)), true, vec4<bool>(false, true, true, true), Struct_1(true, vec4<u32>(0u, 36779u, 1509u, 0u), vec3<i32>(-6931i, 1i, i32(-2147483648)), vec3<i32>(-6642i, -31998i, i32(-2147483648))), Struct_1(true, vec4<u32>(6170u, 11386u, 1u, 24022u), vec3<i32>(421i, i32(-2147483648), -1i), vec3<i32>(-2972i, -155i, 9521i))), vec4<bool>(true, false, false, true), 33485u), Struct_3(vec2<i32>(-1i, -48058i), Struct_2(Struct_1(true, vec4<u32>(4294967295u, 222u, 0u, 28641u), vec3<i32>(0i, 6249i, -20088i), vec3<i32>(11612i, 32317i, 21383i)), true, vec4<bool>(true, true, true, true), Struct_1(false, vec4<u32>(63950u, 4294967295u, 25244u, 14508u), vec3<i32>(-58584i, 38210i, 2147483647i), vec3<i32>(0i, -1i, 12651i)), Struct_1(false, vec4<u32>(1u, 0u, 4294967295u, 4294967295u), vec3<i32>(-49113i, 8526i, 51541i), vec3<i32>(8916i, 3654i, -18993i))), vec4<bool>(true, true, false, false), 1u), Struct_3(vec2<i32>(1713i, i32(-2147483648)), Struct_2(Struct_1(false, vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), vec3<i32>(-1i, 2147483647i, -39482i), vec3<i32>(-1i, i32(-2147483648), -38964i)), true, vec4<bool>(false, false, false, false), Struct_1(true, vec4<u32>(1u, 50262u, 63304u, 56131u), vec3<i32>(i32(-2147483648), 28557i, -57495i), vec3<i32>(35655i, 37020i, i32(-2147483648))), Struct_1(true, vec4<u32>(0u, 1u, 28673u, 10517u), vec3<i32>(1i, 2147483647i, -17429i), vec3<i32>(14028i, i32(-2147483648), 2147483647i))), vec4<bool>(false, true, false, true), 37697u), Struct_3(vec2<i32>(1i, i32(-2147483648)), Struct_2(Struct_1(true, vec4<u32>(4294967295u, 1u, 48112u, 23675u), vec3<i32>(-24571i, 152i, -9889i), vec3<i32>(6490i, 2147483647i, 1i)), false, vec4<bool>(false, false, true, true), Struct_1(false, vec4<u32>(4294967295u, 0u, 1u, 4294967295u), vec3<i32>(i32(-2147483648), 0i, 27996i), vec3<i32>(0i, -13112i, 1i)), Struct_1(false, vec4<u32>(4294967295u, 55813u, 12193u, 1259u), vec3<i32>(1i, -10573i, -1i), vec3<i32>(-28380i, -27140i, 1i))), vec4<bool>(true, false, false, true), 0u), Struct_3(vec2<i32>(0i, 2147483647i), Struct_2(Struct_1(true, vec4<u32>(4294967295u, 0u, 1u, 0u), vec3<i32>(i32(-2147483648), -22875i, -22964i), vec3<i32>(-19588i, i32(-2147483648), 2147483647i)), false, vec4<bool>(true, true, false, false), Struct_1(true, vec4<u32>(1u, 1u, 1u, 40020u), vec3<i32>(18275i, i32(-2147483648), -958i), vec3<i32>(-19336i, 1i, 20143i)), Struct_1(false, vec4<u32>(4294967295u, 0u, 31433u, 4294967295u), vec3<i32>(49094i, 2147483647i, -11727i), vec3<i32>(-1270i, 1i, 16669i))), vec4<bool>(true, true, false, false), 30921u), Struct_3(vec2<i32>(-1639i, 2147483647i), Struct_2(Struct_1(false, vec4<u32>(26985u, 4294967295u, 63848u, 15989u), vec3<i32>(2147483647i, 4813i, -1i), vec3<i32>(2147483647i, i32(-2147483648), 1i)), false, vec4<bool>(true, true, true, false), Struct_1(false, vec4<u32>(34547u, 57079u, 0u, 4294967295u), vec3<i32>(43026i, 18821i, 1i), vec3<i32>(-25887i, 2147483647i, -1i)), Struct_1(false, vec4<u32>(1716u, 0u, 5345u, 10045u), vec3<i32>(1i, 1i, 2147483647i), vec3<i32>(18434i, -20236i, 0i))), vec4<bool>(true, true, true, false), 100860u), Struct_3(vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_2(Struct_1(false, vec4<u32>(83502u, 27794u, 0u, 75675u), vec3<i32>(2147483647i, 0i, 36782i), vec3<i32>(2147483647i, 28423i, -26575i)), true, vec4<bool>(false, false, true, true), Struct_1(true, vec4<u32>(4294967295u, 0u, 110189u, 73835u), vec3<i32>(12626i, 14320i, 2147483647i), vec3<i32>(0i, 0i, 16820i)), Struct_1(true, vec4<u32>(1u, 1u, 4294967295u, 4294967295u), vec3<i32>(1i, 48461i, i32(-2147483648)), vec3<i32>(46836i, -13772i, i32(-2147483648)))), vec4<bool>(false, true, false, true), 4294967295u), Struct_3(vec2<i32>(0i, -7153i), Struct_2(Struct_1(false, vec4<u32>(30592u, 29778u, 61070u, 21521u), vec3<i32>(1i, 50376i, i32(-2147483648)), vec3<i32>(-12088i, 0i, 2147483647i)), true, vec4<bool>(false, false, false, false), Struct_1(true, vec4<u32>(1u, 38463u, 30180u, 10658u), vec3<i32>(-1i, 10220i, -28744i), vec3<i32>(i32(-2147483648), -40325i, i32(-2147483648))), Struct_1(true, vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), vec3<i32>(i32(-2147483648), -22570i, -29523i), vec3<i32>(-30829i, 2147483647i, 2147483647i))), vec4<bool>(true, true, false, false), 0u), Struct_3(vec2<i32>(i32(-2147483648), -1i), Struct_2(Struct_1(false, vec4<u32>(73779u, 2536u, 4294967295u, 4294967295u), vec3<i32>(30983i, 1i, -1i), vec3<i32>(0i, 18427i, 19327i)), true, vec4<bool>(false, false, false, false), Struct_1(false, vec4<u32>(5247u, 4294967295u, 1u, 0u), vec3<i32>(8212i, -25321i, 1i), vec3<i32>(2147483647i, -37017i, -10686i)), Struct_1(false, vec4<u32>(1u, 29946u, 70942u, 37545u), vec3<i32>(-12419i, 43897i, 27397i), vec3<i32>(2147483647i, i32(-2147483648), -34043i))), vec4<bool>(true, false, false, true), 32428u), Struct_3(vec2<i32>(54863i, i32(-2147483648)), Struct_2(Struct_1(false, vec4<u32>(93136u, 29283u, 8604u, 19805u), vec3<i32>(36588i, 7257i, 2147483647i), vec3<i32>(2147483647i, 3916i, -31644i)), true, vec4<bool>(false, true, false, false), Struct_1(false, vec4<u32>(4294967295u, 0u, 51787u, 30233u), vec3<i32>(0i, 42613i, -40473i), vec3<i32>(2147483647i, -19745i, -27378i)), Struct_1(true, vec4<u32>(4345u, 1u, 37820u, 0u), vec3<i32>(-1i, -18210i, 0i), vec3<i32>(-19701i, 17133i, -7498i))), vec4<bool>(true, true, true, true), 35894u), Struct_3(vec2<i32>(19606i, 15726i), Struct_2(Struct_1(false, vec4<u32>(18248u, 7555u, 71895u, 4294967295u), vec3<i32>(23164i, -5208i, 17201i), vec3<i32>(-27939i, 0i, 36530i)), false, vec4<bool>(true, true, false, false), Struct_1(true, vec4<u32>(1u, 0u, 4294967295u, 1u), vec3<i32>(-32494i, -1i, 47847i), vec3<i32>(37131i, 1i, -3318i)), Struct_1(true, vec4<u32>(15314u, 63575u, 14822u, 4294967295u), vec3<i32>(28479i, -4902i, 2147483647i), vec3<i32>(i32(-2147483648), i32(-2147483648), 1i))), vec4<bool>(true, true, false, false), 4294967295u), Struct_3(vec2<i32>(2147483647i, i32(-2147483648)), Struct_2(Struct_1(true, vec4<u32>(80205u, 4294967295u, 0u, 0u), vec3<i32>(79966i, 12385i, -9066i), vec3<i32>(1i, i32(-2147483648), 23597i)), true, vec4<bool>(true, false, false, false), Struct_1(false, vec4<u32>(1u, 30415u, 0u, 63824u), vec3<i32>(11561i, 9975i, -24434i), vec3<i32>(-26212i, 2147483647i, -4238i)), Struct_1(true, vec4<u32>(0u, 0u, 113197u, 4294967295u), vec3<i32>(1i, -10985i, 10597i), vec3<i32>(41925i, 0i, -1i))), vec4<bool>(false, false, false, true), 41603u), Struct_3(vec2<i32>(-11003i, -1i), Struct_2(Struct_1(false, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 28830u), vec3<i32>(-10247i, -52402i, -1i), vec3<i32>(i32(-2147483648), 881i, 39004i)), false, vec4<bool>(true, true, false, true), Struct_1(false, vec4<u32>(83609u, 34275u, 20754u, 4294967295u), vec3<i32>(21664i, -40753i, 23340i), vec3<i32>(-3289i, 2147483647i, 62462i)), Struct_1(true, vec4<u32>(1u, 0u, 68095u, 0u), vec3<i32>(7179i, 4099i, 2147483647i), vec3<i32>(29393i, -1i, 19296i))), vec4<bool>(true, true, true, true), 56200u));

var<private> global1: Struct_2;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    global0 = array<Struct_3, 21>();
    var var_0 = Struct_3(u_input.a.yx, Struct_2(global1.d, !all(vec3<bool>(global1.d.a, global1.e.a, true)), !select(select(global1.c, global1.c, global1.c), select(global1.c, global1.c, global1.c), select(vec4<bool>(global1.a.a, true, true, global1.b), vec4<bool>(global1.b, global1.a.a, global1.a.a, global1.d.a), global1.c)), Struct_1(!all(vec3<bool>(false, false, global1.d.a)), reverseBits(_wgslsmith_div_vec4_u32(u_input.d, u_input.d)), select(select(vec3<i32>(3514i, 36292i, u_input.c), vec3<i32>(2147483647i, -13625i, -500i), false), global1.e.d, select(vec3<bool>(false, global1.c.x, true), global1.c.zzw, global1.c.wyy)), min(abs(u_input.a), ~vec3<i32>(global1.e.c.x, global1.e.c.x, -1i))), global1.a), select(vec4<bool>((false & global1.d.a) && !global1.b, any(global1.c.xx), all(global1.c) && global1.e.a, all(!global1.c.yw)), !vec4<bool>(all(global1.c), global1.d.a, false, !global1.d.a), !global1.c), ~(~u_input.b.x));
    let var_1 = global0[_wgslsmith_index_u32(~87660u, 21u)];
    var var_2 = Struct_4(var_1.b, vec2<i32>(17392i, max(-1i, -1i)), !var_1.c.xzy, var_0.b.e);
    let var_3 = Struct_1(var_1.c.x, ~vec4<u32>(var_2.d.b.x, _wgslsmith_sub_u32(~var_1.d, 50084u ^ u_input.d.x), ~var_2.d.b.x, ~(~13854u)), vec3<i32>(-10981i, _wgslsmith_div_i32(var_1.a.x, ~var_0.b.d.c.x), global1.e.d.x) >> (global1.e.b.wyz % vec3<u32>(32u)), var_2.a.a.d);
    return u_input.a.x;
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    let var_0 = vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.b.x, min(u_input.d.x, 1u)), _wgslsmith_sub_vec2_u32(~_wgslsmith_sub_vec2_u32(global1.a.b.xw, global1.a.b.xw), u_input.d.yy)), countOneBits(u_input.d.x), global1.d.b.x, global1.d.b.x);
    global0 = array<Struct_3, 21>();
    var var_1 = ~countOneBits(firstLeadingBit(global1.a.c.x)) & arg_0.x;
    global0 = array<Struct_3, 21>();
    var var_2 = u_input.a;
    return Struct_2(global1.e, !(!(!global1.e.a)), global1.c, Struct_1(all(global1.c.xyy), ~(~global1.d.b >> (global1.e.b % vec4<u32>(32u))), vec3<i32>(_wgslsmith_mod_i32(9579i, func_3()), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global1.a.c.x, -11412i), vec2<i32>(-50499i, arg_0.x)), firstTrailingBit(vec2<i32>(global1.a.d.x, -1i))), _wgslsmith_clamp_i32(-1i, firstTrailingBit(var_2.x), 2147483647i)), min(-(~vec3<i32>(17166i, -24686i, 1i)), ~countOneBits(vec3<i32>(u_input.c, u_input.c, 0i)))), global1.e);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_5, arg_2: Struct_1) -> Struct_4 {
    let var_0 = global1.c;
    let var_1 = vec4<i32>(arg_1.b.x, ~u_input.a.x, arg_1.b.x >> (max(9200u, ~_wgslsmith_add_u32(1u, 1561u)) % 32u), ~((1i & (16323i << (arg_2.b.x % 32u))) & u_input.a.x));
    global0 = array<Struct_3, 21>();
    global1 = func_2(vec2<i32>(min(36501i, arg_2.c.x | arg_2.d.x), -2147483647i & -firstTrailingBit(global1.d.d.x)));
    global0 = array<Struct_3, 21>();
    return Struct_4(Struct_2(global1.a, global1.a.a, !func_2(arg_2.c.zz | arg_1.b.yz).c, Struct_1(all(global1.c), abs(u_input.d) ^ (u_input.d | vec4<u32>(4294967295u, 116821u, 1u, arg_0.x)), vec3<i32>(66745i, 0i, ~arg_1.c.x), -u_input.a ^ _wgslsmith_mod_vec3_i32(arg_2.c, global1.d.c)), func_2(vec2<i32>(max(arg_1.b.x, var_1.x), -arg_1.c.x)).d), arg_2.c.xx | ~_wgslsmith_clamp_vec2_i32(-vec2<i32>(global1.a.c.x, u_input.a.x), select(u_input.a.zz, global1.a.d.xx, arg_2.a), vec2<i32>(global1.d.d.x, 1i)), vec3<bool>(arg_2.a | !func_2(global1.e.d.yx).e.a, all(vec2<bool>(all(vec3<bool>(true, true, false)), arg_2.a)), !all(var_0.xz)), func_2(u_input.a.yx >> (vec2<u32>(global1.d.b.x, firstTrailingBit(arg_0.x)) % vec2<u32>(32u))).e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.xy;
    global0 = array<Struct_3, 21>();
    global0 = array<Struct_3, 21>();
    var var_1 = func_1(_wgslsmith_mod_vec2_u32(vec2<u32>(global1.e.b.x, ~(~u_input.b.x)), u_input.d.yw), Struct_5(global1.d.b, abs(-vec4<i32>(u_input.a.x, global1.d.d.x, u_input.c, u_input.c)), vec4<i32>(u_input.a.x, i32(-1i) * -1i, 22021i, u_input.c), ~vec2<u32>(1u, 24618u)), Struct_1(!((i32(-1i) * -26560i) <= (12323i | u_input.c)), u_input.d, vec3<i32>(~u_input.a.x, firstTrailingBit(1i), _wgslsmith_mult_i32(_wgslsmith_div_i32(10250i, 37896i), -global1.d.d.x)), ~vec3<i32>(-global1.e.c.x, _wgslsmith_mod_i32(-2147483647i, 2147483647i), -18968i)));
    global0 = array<Struct_3, 21>();
    global1 = var_1.a;
    var var_2 = _wgslsmith_mod_vec2_i32(~(-global1.a.d.xz), func_1(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(func_2(u_input.a.yx).a.b.zx, firstLeadingBit(var_1.a.e.b.zy), _wgslsmith_div_vec2_u32(vec2<u32>(global1.e.b.x, u_input.b.x), u_input.d.xx)), u_input.d.xz), Struct_5(abs(min(vec4<u32>(global1.d.b.x, u_input.b.x, 15488u, var_0.x), u_input.d)), vec4<i32>(u_input.c, u_input.c, 1i, var_1.d.d.x) & abs(vec4<i32>(-1i, -13330i, 0i, 0i)), -vec4<i32>(var_1.d.d.x, 3479i, u_input.a.x, u_input.c), _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.d.b.x, var_1.d.b.x), vec2<u32>(44281u, 0u))), Struct_1(true, _wgslsmith_mod_vec4_u32(~global1.e.b, vec4<u32>(var_1.a.d.b.x, var_0.x, global1.a.b.x, 4294967295u)), vec3<i32>(-1i) * -vec3<i32>(3082i, var_1.b.x, 37784i), ~var_1.d.c)).b);
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(vec4<u32>(u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1u, u_input.d.x, 1u), vec4<u32>(var_1.d.b.x, 53382u, 1u, 1u)), 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 8420u, 64421u), u_input.b))));
}

